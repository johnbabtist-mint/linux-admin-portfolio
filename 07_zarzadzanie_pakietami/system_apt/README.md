# ⚙️ 07_zarzadzanie_pakietami – System APT

Ten moduł to **centrum dowodzenia aktualizacjami i oprogramowaniem Linuxa**.  
APT (Advanced Package Tool) to narzędzie, dzięki któremu system sam:
- pobiera oprogramowanie z repozytoriów,
- sprawdza jego integralność (klucze GPG),
- aktualizuje, instaluje i usuwa pakiety.

---

## 📘 Cel nauki
Zrozumieć, jak działa **APT i repozytoria** w Ubuntu/Debianie.  
Po tym module będziesz umiał:
- aktualizować system,
- naprawiać błędy repozytoriów,
- dodawać nowe źródła pakietów i ich klucze GPG.

---

## 🔹 Najważniejsze pojęcia

| Pojęcie | Znaczenie |
|----------|-----------|
| **APT** | Advanced Package Tool – zarządza instalacją i aktualizacjami |
| **Repozytorium** | Serwer z paczkami `.deb` |
| **Klucz GPG** | Gwarantuje, że pakiet pochodzi z zaufanego źródła |
| **sources.list.d** | Folder z plikami repozytoriów |
| **keyrings** | Folder z zaufanymi kluczami GPG (`/usr/share/keyrings/`) |

---

## 🔧 Przykład dodania nowego repozytorium

```bash
sudo curl -fsSLo /usr/share/keyrings/nazwa.gpg URL_DO_KLUCZA
echo "deb [signed-by=/usr/share/keyrings/nazwa.gpg] URL_DYSTRYBUCJA KOMPONENTY" | sudo tee /etc/apt/sources.list.d/nazwa.list
sudo apt update

➡️ W ten sposób dodajesz nowe repozytorium i przypisujesz mu klucz GPG.

💡 Wskazówki praktyczne

Jeśli apt update pokazuje błąd GPG → sprawdź ścieżkę do klucza w /usr/share/keyrings/

Jeśli system nie widzi pakietów → sprawdź, czy repozytorium .list jest aktywne

Po każdej zmianie repozytoriów uruchom:
sudo apt update

🧠 Wniosek

APT to menedżer oprogramowania i bezpieczeństwa w jednym.
Jeśli wiesz, gdzie są repozytoria i klucze, potrafisz w pełni kontrolować system.

💡 „APT to automatyka Linuksa – dba o porządek, jeśli mu na to pozwolisz.” – Babtist

