#!/usr/bin/env zsh

# create a .env file with the env variables, also don't forget to create the the looker.ini file
export $(grep -v '^#' .env | xargs -0)

# dependencies
brew install libmagic
pip install -r requirements.txt

# application
streamlit run app.py
