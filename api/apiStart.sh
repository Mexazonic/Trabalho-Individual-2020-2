echo "test"
wget -qO- https://raw.githubusercontent.com/eficode/wait-for/v2.1.1/wait-for | sh -s -- db:5432 -- echo Success

echo "Migrations2"
python3 manage.py migrate

echo "Starting server on Port 8000"
python3 manage.py runserver 0.0.0.0:8000