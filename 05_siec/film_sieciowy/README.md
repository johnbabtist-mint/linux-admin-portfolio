# 🎬 Film sieciowy – droga pakietu (wersja Babtista)

## Scena 1️⃣ – komputer się budzi
> „Hej, czy ktoś mi da adres?”
➡️ DHCP nadaje IP – komputer zna siebie (`ip a`)

**Jeśli nie ma IP →** DHCP lub router nie odpowiada.  
Bez IP komputer nie istnieje w sieci.

---

## Scena 2️⃣ – komputer szuka routera
> „Halo, router, jesteś tam?”
➡️ `ping 192.168.1.1`

Jeśli brak odpowiedzi → problem lokalny:
- kabel wypięty  
- Wi-Fi rozłączone  
- router wyłączony  

Jeśli router odpowiada → połączenie lokalne działa ✅

---

## Scena 3️⃣ – router pyta świat
> „8.8.8.8, jesteś?”
➡️ `ping 8.8.8.8`

Jeśli brak odpowiedzi → router nie ma połączenia z Internetem:
- kabel WAN / światłowód wypięty  
- błędne logowanie PPPoE  
- problem u operatora  

---

## Scena 4️⃣ – DNS tłumaczy nazwę
> „Google.com – jaki masz numer?”
➡️ `ping google.com`

Jeśli brak odpowiedzi → DNS nie działa.  
Rozwiązanie:
```bash
cat /etc/resolv.conf
sudo nano /etc/resolv.conf
# wpisz:
nameserver 1.1.1.1
nameserver 8.8.8.8

Finał

Jeśli wszystkie sceny przechodzą:

Internet działa 
Jeśli którakolwiek scena się zatrzyma:
Tam szukaj przyczyny 

