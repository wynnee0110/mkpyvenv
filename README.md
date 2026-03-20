# mkpyvenv 

A simple shell tool to instantly create Python projects with a virtual environment.

---

## Features

*  Creates project folder
*  Sets up virtual environment (`venv`)
*  Activates environment automatically
*  Creates starter files (`main.py`, `requirements.txt`, `README.md`)

---

## Installation

```bash
chmod +x mkpy.sh
sudo mv mkpy.sh /usr/local/bin/mkpy
```

---

##  Usage

```bash
mkpy myproject
```

---

## 📁 What it generates

```
myproject/
├── venv/
├── main.py
├── requirements.txt
├── README.md
└── .gitignore
```

---

##  Notes

* The virtual environment is activated automatically after creation
* If you reopen your terminal, activate it again using:

```bash
source venv/bin/activate
```

---

