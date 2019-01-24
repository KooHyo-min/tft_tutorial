#!/usr/bin/env bash

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
# .bashrc 에 하기 내용 추가
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
pyenv update

# virtualenv
PYTHON_VERSION=3.7.2
pyenv install $PYTHON_VERSION
pyenv virtualenv $PYTHON_VERSION tft_tutorial
pyenv local tft_tutorial

# pip
pip install --upgrade pip
pip install --upgrade setuptools

# pip requirements
pip install -r dev-requirements.txt

# postgresql 설치
sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install postgresql-9.6

# DB 구성
sudo -u postgres psql -a -f myscript/create_db.sql

