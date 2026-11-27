# venv create: vc <name> [python]
# Uses Python 3.13 unless another interpreter is given.
function vc() {
        if [ $1 ]; then
                if declare -F deactivate > /dev/null; then
                        deactivate
                fi
                ${2:-python3.13} -m venv ~/.virtualenvs/$1 &&
                . ~/.virtualenvs/$1/bin/activate
        fi
}

# venv source: vs <name>
function vs() {
        if [ $1 ]; then
                . ~/.virtualenvs/$1/bin/activate
        fi
}

# venv list: vls
alias vls="ls ~/.virtualenvs/"

# venv remove: vrm <name>
function vrm() {
        # Only a single plain name, so nothing but one environment can be deleted
        if [[ $# -ne 1 || -z $1 || $1 == */* || $1 == . || $1 == .. ]]; then
                echo "Usage: vrm <name>" >&2
                return 1
        fi
        if [[ ! -d ~/.virtualenvs/$1 ]]; then
                echo "vrm: no environment named '$1'" >&2
                return 1
        fi
        rm -rf -- ~/.virtualenvs/"$1"
}
