FROM python:3.11

WORKDIR /home/django

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY manage.py .
COPY apps/ ./apps/
COPY expense_tracker/ ./expense_tracker/
COPY static/ ./static/
COPY templates/ ./templates/

RUN python manage.py collectstatic

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
