
---

## 📄 `07_zarzadzanie_pakietami/komendy_apt.txt`

ZARZĄDZANIE PAKIETAMI – APT

apt update – aktualizuje listę dostępnych pakietów
apt upgrade – aktualizuje zainstalowane pakiety
apt install – instaluje nowy pakiet
apt remove – usuwa pakiet, zostawia konfigurację
apt purge – usuwa pakiet razem z plikami konfiguracyjnymi
apt search – wyszukuje pakiet w repozytoriach
apt list – wyświetla zainstalowane lub dostępne pakiety
apt show – pokazuje szczegóły danego pakietu
apt autoremove – usuwa niepotrzebne pakiety
apt clean – czyści lokalny cache pakietów

🧩 Repozytoria i klucze:
cat /etc/apt/sources.list – główny plik repozytoriów
ls /etc/apt/sources.list.d/ – dodatkowe źródła
cat /usr/share/keyrings/ – lista zaufanych kluczy GPG
