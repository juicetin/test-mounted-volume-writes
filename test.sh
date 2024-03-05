docker build -t test-mounted-volume-writes .

mkdir -p test-dir
# These should work - not throw the error:
# bash: line 1: /app/test.txt: Permission denied
docker run --rm -v ./test-dir:/app test-mounted-volume-writes
docker run --rm -u $(id -u):$(id -g) --group-add users -v ./test-dir:/app test-mounted-volume-writes
