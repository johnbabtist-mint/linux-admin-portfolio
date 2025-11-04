# 04. Pliki i tekst  
📅 04.11.2025  

## Edytory tekstu:
| Komenda | Opis |
|----------|------|
| `nano <plik>` | prosty edytor tekstu w terminalu |
| `vim <plik>` | zaawansowany edytor tekstu (trybowy) |
| `gedit <plik>` | graficzny edytor tekstu (środowisko graficzne) |

---

## Przekierowania i potoki:
| Symbol | Opis |
|---------|------|
| `>` | przekierowuje wyjście do pliku (zastępuje zawartość) |
| `>>` | dopisuje wyjście na końcu pliku |
| `|` | (pipe) przekazuje wynik jednej komendy do drugiej |

---

## Otwieranie plików:
| Komenda | Opis |
|----------|------|
| `xdg-open <plik>` | otwiera plik w trybie graficznym (np. tekst lub PDF) |
| `head <plik>` | pokazuje pierwsze 10 linii pliku |
| `less <plik>` | przegląda plik strona po stronie (Q – wyjście) |
| `tail <plik>` | pokazuje ostatnie 10 linii pliku |
| `tail -f <plik>` | śledzi plik na żywo (np. logi systemowe) |

---

## Procesy i diagnostyka:
| Komenda | Opis |
|----------|------|
| `ps -ef` | pokazuje wszystkie procesy w systemie |
| `ps aux` | pełna lista procesów ze szczegółami |
| `htop` / `top` | dynamiczny podgląd procesów i użycia CPU/pamięci |
| `systemctl status <usługa>` | pokazuje status wybranej usługi systemowej |

---

## Zarządzanie procesami: ##  

  
| Komenda | Opis |
|----------|------|
| `kill <PID>` | kończy proces o podanym numerze PID |
| `kill -9 <PID>` | wymuszone zakończenie procesu |
| `kill -3 <PID>` | wysyła sygnał zakończenia (asynchronicznie) |
| `kill -1 <PID>` | restartuje proces (przeładowanie) |

---

## Czego się nauczyłem:
- rozumiem różnice między `nano`, `vim`, `gedit`
- potrafię przekierowywać wyjście komend do plików (`>`, `>>`, `|`)
- umiem przeglądać zawartość plików tekstowych i logów
- wiem, jak sprawdzić i zakończyć proces w systemie
- potrafię monitorować działanie systemu (`htop`, `systemctl status`)

---

📘 **Cel:**  
Zrozumienie obsługi plików tekstowych i zarządzania procesami w systemie Linux.
