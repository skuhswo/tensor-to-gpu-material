#!/bin/sh
# Tensor to GPU — lokalen JupyterLab-Start (macOS/Linux).
# Voraussetzung: uv ist installiert (Ein-Zeilen-Befehl: docs.astral.sh/uv).
# Der erste Start lädt die Kurs-Pakete und dauert ein paar Minuten.
cd "$(dirname "$0")" || exit 1
exec uvx --python 3.12 --from jupyterlab --with numpy --with pandas --with matplotlib jupyter lab
