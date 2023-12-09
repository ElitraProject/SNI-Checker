#!/bin/bash

main() {
    sudo apt update
    sudo apt install git pip -y
    git clone https://github.com/ElitraProject/SNI-Checker.git
    (cd SNI-Checker && pip install -r requirements.txt) 
    (cd SNI-Checker && python3 main.py)
}

main
