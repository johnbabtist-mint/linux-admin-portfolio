# moreno3 – SSH Intrusion Detection Script (Blue Team Tool)

**moreno3** to skrypt bezpieczeństwa napisany w Bash, służący do wykrywania ataków brute-force na usługę SSH oraz podejrzanych udanych logowań.  
Działa jako lekkie narzędzie klasy *mini-SIEM*, analizując logi systemowe i prezentując czytelne raporty w formie ASCII.

---

## 🔥 Funkcje

- analiza logów z `/var/log/auth.log`
- wykrywanie:
  - nieudanych prób logowania (Failed password)
  - udanych logowań z niestandardowych adresów IP (Accepted password)
- klasyfikacja zagrożeń:
  - **NISKIE** (1–4 prób)
  - **WYSOKIE** (5–9 prób)
  - **KRYTYCZNE** (10+ prób)
- sortowanie IP według liczby prób
- czytelne raporty ASCII w stylu SOC
- zapis logów do `/var/log/moreno3`

---

## 📌 Przykład raportu

```text
┌──────────────────────────────────────────────┐
│  WYKRYTO ATAK SSH                            │
├──────────────────────────────────────────────┤
│ IP: 127.0.0.1                                │
│ Kiedy: czw, 13 lis 2025, 09:05:21 CET        │
│ Ilość prób: 17                               │
│ Poziom zagrożenia: KRYTYCZNE                 │
└──────────────────────────────────────────────┘

=== UDANE LOGOWANIA ===
[ALERT] Podejrzane udane logowanie z IP: 192.168.x.x
```

---

## 📁 Struktura projektu

```text
08_moreno3_security_monitor/
│
├── moreno3.sh               # główny skrypt
└── README.md                # dokumentacja projektu
```

---

## 📦 Instalacja

```bash
sudo cp moreno3.sh /usr/local/bin/moreno3
sudo chmod +x /usr/local/bin/moreno3
```

---

## ▶️ Uruchomienie

```bash
sudo moreno3
```

---

## 🧪 Testowanie

### 🔹 Test błędnych logowań (brute-force)

```bash
ssh wronguser@localhost
```

### 🔹 Test udanego logowania z innego urządzenia

```bash
ssh twoj_user@twoje_IP
```

Potem:

```bash
sudo moreno3
```

---

## 🧠 Informacje dodatkowe

- Wymaga dostępu do `/var/log/auth.log`
- Działa na systemach Linux (Debian/Ubuntu)
- Idealne narzędzie edukacyjne Blue Team
- Możliwe rozszerzenia:
  - geolokalizacja adresów IP  
  - automatyczne blokowanie IP  
  - alerty Telegram/Discord  
  - integracja z cron i ELK Stack  

---

## 📜 Licencja

Projekt edukacyjny — do nauki i wykorzystania w portfolio.
