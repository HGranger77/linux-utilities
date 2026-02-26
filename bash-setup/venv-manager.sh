function venvc() {
        if [ $1 ]; then
                python3 -m venv ~/.virtualenvs/$1
        fi
}

function venvs() {
        if [ $1 ]; then
                . ~/.virtualenvs/$1/bin/activate
        fi
}

alias venvls="ls ~/.virtualenvs/"
