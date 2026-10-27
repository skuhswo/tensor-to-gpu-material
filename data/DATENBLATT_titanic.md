# Datenblatt: Titanic (Kursfassung LE04)

## Quelle

- Datei `titanic3.csv`: Titanic-Passagierliste, zusammengestellt von Thomas Cason für Frank E. Harrell Jr., Vanderbilt University Department of Biostatistics, auf Grundlage der Encyclopedia Titanica. Abgerufen von https://hbiostat.org/data/repo/titanic3.csv. Derselbe Datensatz liegt auf OpenML als Nummer 40945 (Lizenz „Public") und ist die Grundlage des scikit-learn-Beispiels „Column Transformer with Mixed Types".
- 1309 Zeilen, 14 Spalten: `pclass`, `survived`, `name`, `sex`, `age`, `sibsp`, `parch`, `ticket`, `fare`, `cabin`, `embarked`, `boat`, `body`, `home.dest`.
- SHA-256 `titanic3.csv`: `db6df9666818c69a753cd85d743e01502c8518b00579b6aada0d4fc5a66ccb9d`

## Kursfassung `titanic_raw.csv`

Erzeugt von `make_titanic.py` (Seed 4) aus der Quelle, mit diesen Eingriffen:

1. Zwölf Zeilen sind doppelt vorhanden (Zeilen der Quelle: 105, 370, 492, 592, 665, 793, 942, 1145, 1224, 1225, 1265, 1272), insgesamt 1321 Zeilen.
2. In 40 Zeilen ist `sex` uneinheitlich geschrieben (Großbuchstaben, Leerzeichen am Rand), in 30 Zeilen `embarked` (Kleinbuchstaben, Leerzeichen).
3. Zwei Altersangaben sind unmöglich: 134 und 155 Jahre (Quelle: 28 und 70.5 Jahre, Zeilen 844 und 727 der Kursfassung).
4. Fehlende Werte in `age` und `fare` stehen als `?` statt als leeres Feld; die übrigen Spalten behalten leere Felder.
5. Zwei Spaltennamen tragen Leerzeichen: `" age"` und `"fare "`.

Die Quelldaten selbst sind unverändert. Wer die Schreibweisen vereinheitlicht, `?` durch fehlende Werte ersetzt, die beiden unmöglichen Altersangaben auf fehlend setzt und danach die doppelten Zeilen entfernt, erhält wieder 1309 Zeilen, die bis auf die beiden Altersfelder mit der Quelle übereinstimmen. Die Reihenfolge ist Teil der Lektion: Duplikate, die sich nur in der Schreibweise unterscheiden, fallen erst nach dem Vereinheitlichen zusammen.

- SHA-256 `titanic_raw.csv`: `c76b73e1a32cb110d77e672eebf5d120248d494d3f496b90bca752bdee7e124d`

## Verwendung

LE04 liest `titanic_raw.csv`, bereinigt sie nach dem Vertrag des Workbooks und speichert die bereinigte Fassung; die nächste Lerneinheit baut darauf die Pipeline. Die Spalten `boat`, `body` und `home.dest` werden in LE04 entfernt, weil `boat` und `body` das Überleben verraten.
