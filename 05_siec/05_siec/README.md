#  05_siec – Diagnostyka sieci (schemat Babtista)  


Materiały do nauki i ćwiczeń z podstaw sieci w Linux.
Opracowanie własne na podstawie realnych ćwiczeń i przypadków diagnostycznych.

## 📘 Zawartość
- `schemat_babtista.txt` – 4 komendy diagnostyczne
- `film_sieciowy.md` – sieć jako film krok po kroku
- `test_sieci.md` – przykładowe zadania i testy praktyczne

---

## 🎯 Cel
Zrozumieć i przećwiczyć pełną drogę pakietu:

komputer > router > DNS > operator > internet  


---

##  Schemat Babtista (cztery komendy)  

| Co sprawdzasz | Komenda | Co Ci mówi |
|----------------|----------|-------------|
| 1️⃣ Czy komputer ma IP | `ip a` | brak IP → problem z DHCP / połączeniem |
| 2️⃣ Czy widzi router | `ping 192.168.1.1` | brak odpowiedzi → kabel / Wi-Fi / router lokalny |
| 3️⃣ Czy router ma Internet | `ping 8.8.8.8` | brak odpowiedzi → router / dostawca (WAN) |
| 4️⃣ Czy działa DNS | `ping google.com` | brak odpowiedzi → DNS |
