DIRECTORY1=./ll_env

if [[ ! -d "$DIRECTORY1" ]]; then
    python3 -m venv venv && source venv/bin/activate
    pip install -r requirements.txt
else
    source venv/bin/activate
    export FLASK_APP=runserver.py
    export FLASK_ENV=development
    flask run
fi