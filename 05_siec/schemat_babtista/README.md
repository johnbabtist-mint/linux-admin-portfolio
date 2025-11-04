
SCHEMAT BABTISTA – Diagnostyka sieci (4 komendy)

1️⃣ ip a
   → komputer sprawdza, czy ma adres IP
   → brak IP = problem z DHCP / połączeniem (kabel, Wi-Fi)

2️⃣ ping 192.168.1.1
   → komputer pyta router: „jesteś tam?”
   → brak odpowiedzi = problem lokalny (Wi-Fi, kabel, router)

3️⃣ ping 8.8.8.8
   → router sprawdza połączenie z Internetem
   → brak odpowiedzi = problem z dostawcą (WAN, PPPoE, światłowód)

4️⃣ ping google.com
   → DNS tłumaczy nazwę na numer IP
   → brak odpowiedzi = DNS nie działa lub błędna konfiguracja

🧩 Schemat logiczny:
komputer > router > DNS > router > komputer

💡 Te cztery komendy wykrywają 90% usterek sieciowych.
