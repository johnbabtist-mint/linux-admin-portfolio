# ❤️ 06_struktura_kodow – Serce systemu Linux  

To właśnie tutaj zaczynasz rozumieć, **z czego zbudowany jest Linux**.  
Każdy folder ma swoje zadanie i razem tworzą prawdziwe **serce systemu**.  

---

## 📘 Główne katalogi systemowe

| Ścieżka | Znaczenie |
|----------|------------|
| `/boot` | pliki potrzebne do uruchamiania systemu (kernel, GRUB) |
| `/etc` | pliki konfiguracyjne systemu i usług |
| `/home` | katalogi użytkowników (np. /home/john) |
| `/var` | dane zmienne: logi, kolejki drukarki, cache |
| `/usr` | programy i biblioteki systemowe (większość aplikacji) |
| `/bin` | podstawowe polecenia systemowe (ls, cp, mv, cat, itp.) |
| `/tmp` | katalog tymczasowy (kasowany przy starcie systemu) |

---

## 🔑 Kluczowe lokalizacje (warto znać na pamięć)

| Typ danych | Ścieżka | Opis |
|-------------|----------|------|
| Klucze GPG | `/usr/share/keyrings/` | tutaj przechowywane są zaufane klucze repozytoriów |
| Repozytoria | `/etc/apt/sources.list.d/` | lista źródeł pakietów systemowych |
| Logi | `/var/log/` | wszystkie logi systemowe i usług |
| Konfiguracje | `/etc/` | serce ustawień całego systemu |

---

## 🧩 Komendy praktyczne

| Cel | Komenda | Znaczenie |
|------|----------|-----------|
| Dodanie klucza GPG | `sudo curl -fsSLo /usr/share/keyrings/nazwa.gpg URL` | pobiera i zapisuje klucz zaufany |
| Podgląd repozytoriów | `cat /etc/apt/sources.list.d/plik.list` | pokazuje adresy źródeł pakietów |
| Sprawdzenie logów | `sudo less /var/log/syslog` | podgląd logów systemowych |
| Podgląd konfiguracji | `ls /etc` | lista plików konfiguracyjnych |

---

## 🧠 Zapamiętaj!

📍 **/etc** to mózg,  
📍 **/usr** to mięśnie (programy),  
📍 **/var/log** to pamięć (historia i błędy),  
📍 **/home** to Twoje serce ❤️  

---

## 🎯 Cel modułu
- Rozpoznać strukturę katalogów Linuxa

# WNIOSEK #  


    JESLI WIESZ GDZIE LINUX TRZYMA SWOJE SERCE (CZYTAJ PLIKI)  
    POTRAFISZ NAPRAWIC, SKONFIGUROWAC I ZROZUMIEC WSZYSTKO  
    CO DZIEJE SIE W SYSTEMIE  


        "KTO ZNA /etc i /var , ten rzadzi Linuksem"  
        Babtist
- Wiedzieć, co i gdzie się znajduje  
- Rozumieć, że **każdy folder ma swoje zadanie – razem tworzą Serce systemu Linux** 🐧
