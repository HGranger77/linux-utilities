function venvc() {
        if [ $1 ]; then
                deactivate
                python3 -m venv ~/.virtualenvs/$1
                . ~/.virtualenvs/$1/bin/activate
        fi
}

function venvs() {
        if [ $1 ]; then
                . ~/.virtualenvs/$1/bin/activate
        fi
}

alias venvls="ls ~/.virtualenvs/"
alias venvrm="rm -rf ~/.virtualenvs/"
