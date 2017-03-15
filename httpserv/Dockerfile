# Using official python runtime base image
FROM python:3.6

RUN apt-get update && apt-get install -y \
curl

ENTRYPOINT ["python", "-m","http.server"]
CMD ["8080"]
