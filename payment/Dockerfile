FROM python:3.9
WORKDIR /opt/roboshop
COPY *.py .
COPY payment.ini .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
ENV CART_HOST="cart" \
    CART_PORT="8080" \
    USER_HOST="user" \
    USER_PORT="8080" \
    AMQP_HOST="rabbitmq" \
    AMQP_USER="roboshop" \
    AMQP_PASS="roboshop123"
CMD ["uwsgi", "--ini", "payment.ini"]