FROM alpine
RUN apk add --no-cache bash
WORKDIR /app
CMD ["bash", "-c", "echo 'Hello, World!' > /app/test.txt && cat /app/test.txt"]

