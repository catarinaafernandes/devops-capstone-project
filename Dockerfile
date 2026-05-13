FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN useradd appuser
USER appuser

CMD ["python", "app.py"]
