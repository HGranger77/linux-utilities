function venvc() {
        if [ $1 ]; then
                deactivate
                # Python 3.13 unless another interpreter is given: venvc <name> [python]
                ${2:-python3.13} -m venv ~/.virtualenvs/$1 &&
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
