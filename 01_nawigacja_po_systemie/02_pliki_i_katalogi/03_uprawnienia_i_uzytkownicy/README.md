
                                  # Uprawnienia i użytkownicy #

Data: 04.11.2025


| Komenda                                          | Opis                                                                               |
| ------------------------------------------------ | ---------------------------------------------------------------------------------- |
| `sudo`                                           | uruchamia komendę z uprawnieniami roota (np. `sudo polecenie`)                     |
| `tee`                                            | zapisuje tekst do pliku z uprawnieniami sudo (`echo "test" \| sudo tee /plik.txt`) |
| `chmod`                                          | zmienia uprawnienia pliku                                                          |
| `chmod +x skrypt.sh`                             | nadaje plikowi prawo do uruchomienia (np. skrypt)                                  |
| `chown`                                          | zmienia właściciela pliku                                                          |
| `chgrp`                                          | zmienia grupę przypisaną do pliku                                                  |
| `whoami`                                         | pokazuje, kim jesteś (aktualny użytkownik)                                         |
| `groups [użytkownik]`                            | wyświetla grupy, do których należy użytkownik                                      |
| `adduser` / `deluser`                            | dodaje lub usuwa użytkownika                                                       |
| `passwd [użytkownik]`                            | zmienia hasło użytkownika                                                          |
| `groupadd`                                       | dodaje nową grupę                                                                  |
| `groupdel`                                       | usuwa grupę                                                                        |
| `sudo usermod -aG NAZWA_GRUPY NAZWA_UŻYTKOWNIKA` | dodaje użytkownika do wybranej grupy  


# Przykładowe grupy systemowe #  
Grupa	Opis
lpadmin-	drukarki
plugdev-dostęp do urządzeń USB
adm	-dostęp do logów systemowych
sudo-	możliwość wykonywania poleceń jako administrator  



          Czego się nauczyłem:

-potrafię nadawać i zmieniać uprawnienia (chmod, chown, chgrp)

-wiem, jak sprawdzić aktualnego użytkownika i jego grupy (whoami, groups)

-umiem tworzyć i usuwać użytkowników oraz grupy (adduser, deluser, groupadd, groupdel)

-potrafię dodać użytkownika do grupy (usermod -aG)

-wiem, jak działa sudo i kiedy warto używać tee do zapisu pliku z uprawnieniami root
