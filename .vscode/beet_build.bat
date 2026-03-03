@echo off
setlocal

REM Eerst pc1-venv proberen
if exist .venv_pc1 (
    call .venv_pc1\Scripts\activate.bat
    goto run
)

REM Dan pc2-venv proberen
if exist .venv_pc2 (
    call .venv_pc2\Scripts\activate.bat
    goto run
)

REM Als beide niet bestaan → fallback maken
if not exist .venv (
    python -m venv .venv
    call .venv\Scripts\activate.bat
    pip install -r requirements.txt
) else (
    call .venv\Scripts\activate.bat
)

:run
beet --log debug
python done_sound.py