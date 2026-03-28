# Expense Tracker — Run Instructions

Quick steps to create the virtualenv, install dependencies, and run the app.

Create a virtual environment (if you don't already have one):

```bash
python3 -m venv venv
```

Install dependencies into the venv:

```bash
venv/bin/python -m pip install --upgrade pip
venv/bin/python -m pip install -r requirements.txt
```

Run the app (preferred — uses the venv Python directly):

```bash
venv/bin/python app.py
```

Alternative: activate the venv and run normally:

```bash
source venv/bin/activate
python app.py
```

Troubleshooting
- If you see `ModuleNotFoundError: No module named 'flask'`, ensure you're running the `venv` Python (use the `venv/bin/python` command above).
- If port 5001 is already in use, stop the process using it or run the app with a different port:

```bash
venv/bin/python app.py --port 5002
```

Start script
- There's a convenience script `start.sh` that will create the venv (if missing), install dependencies, and run the app.
