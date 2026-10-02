@echo off
rem Tensor to GPU - lokaler JupyterLab-Start (Windows).
rem Voraussetzung: uv ist installiert (Ein-Zeilen-Befehl: docs.astral.sh/uv).
rem Der erste Start laedt die Kurs-Pakete und dauert ein paar Minuten.
cd /d "%~dp0"
uvx --python 3.12 --from jupyterlab --with numpy --with pandas --with matplotlib jupyter lab
pause
