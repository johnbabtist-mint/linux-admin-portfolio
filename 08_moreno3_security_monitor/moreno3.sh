#!/bin/bash

LOG_FILE="/var/log/auth.log"
OUTPUT="/var/log/moreno3"

THRESHOLD_LOW=1
THRESHOLD_MED=5
THRESHOLD_HIGH=10

declare -A ATTEMPTS

# --- Zbieranie nieudanych logowań SSH (brute-force) ---
while read -r line; do
    ip=$(echo "$line" | awk '{print $(NF-3)}')
    [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]] || continue
    ((ATTEMPTS["$ip"]++))
done < <(grep "Failed password" "$LOG_FILE")

# --- Zbieranie udanych logowań ---
SUCCESS_LOGINS=$(grep "Accepted password" "$LOG_FILE" | awk '{print $(NF-3)}' | sort -u)

# --- Sortowanie IP wg liczby prób (malejąco) ---
SORTED=$(for ip in "${!ATTEMPTS[@]}"; do
    echo "${ATTEMPTS[$ip]} $ip"
done | sort -rn)

echo "" > "$OUTPUT"
DISPLAYED=0

# --- Przetwarzanie każdego IP ---
while read -r entry; do
    COUNT=$(echo "$entry" | awk '{print $1}')
    IP=$(echo "$entry" | awk '{print $2}')

    [[ -z "$IP" ]] && continue

    # --- Poziomy zagrożenia ---
    if (( COUNT >= THRESHOLD_HIGH )); then
        LEVEL="KRYTYCZNE"
    elif (( COUNT >= THRESHOLD_MED )); then
        LEVEL="WYSOKIE"
    elif (( COUNT >= THRESHOLD_LOW )); then
        LEVEL="NISKIE"
    else
        continue
    fi

    DATE=$(date "+%a, %d %b %Y, %H:%M:%S %Z")

    # --- Wyświetlanie na ekranie ---
    echo "┌──────────────────────────────────────────────┐"
    echo "│  WYKRYTO ATAK SSH                            │"
    echo "├──────────────────────────────────────────────┤"
    printf "│ IP: %-40s │\n" "$IP"
    printf "│ Kiedy: %-36s │\n" "$DATE"
    printf "│ Ilość prób: %-31s │\n" "$COUNT"
    printf "│ Poziom zagrożenia: %-23s │\n" "$LEVEL"
    echo "└──────────────────────────────────────────────┘"
    echo

    # --- Zapis do logu ---
    {
        echo "┌──────────────────────────────────────────────┐"
        echo "│  WYKRYTO ATAK SSH                            │"
        echo "├──────────────────────────────────────────────┤"
        printf "│ IP: %-40s │\n" "$IP"
        printf "│ Kiedy: %-36s │\n" "$DATE"
        printf "│ Ilość prób: %-31s │\n" "$COUNT"
        printf "│ Poziom zagrożenia: %-23s │\n" "$LEVEL"
        echo "└──────────────────────────────────────────────┘"
        echo
    } >> "$OUTPUT"

    DISPLAYED=1
done <<< "$SORTED"

# --- Informacja, gdy nie ma ataków ---
if [[ $DISPLAYED -eq 0 ]]; then
    echo "[INFO] Brak ataków spełniających kryteria." | tee -a "$OUTPUT"
fi

# --- Wykrywanie podejrzanych udanych logowań ---
if [[ -n "$SUCCESS_LOGINS" ]]; then
    echo "=== UDANE LOGOWANIA ===" | tee -a "$OUTPUT"
    for sip in $SUCCESS_LOGINS; do
        [[ "$sip" == "127.0.0.1" ]] && continue
        echo "[ALERT] Podejrzane udane logowanie z IP: $sip" | tee -a "$OUTPUT"
    done
fi
