#! /bin/bash

echo "[Start resetting migrations]"
if source venv/bin/activate ; then
    echo "[Deleting sqlite database]"
    rm db.sqlite3
    echo "[Deleting all migrations...]"
    find personnel_appointments/migrations -type f -name '0*' -exec echo "    {}" \; -exec rm {} \;
    echo "[Makemigrations polls]"
    python manage.py makemigrations personnel_appointments
    echo "[Migrate]"
    python manage.py migrate
    deactivate
    echo "[Done]"
else
    echo "ERROR: Cannot activate venv (./venv/bin/activate)."
    exit
fi
