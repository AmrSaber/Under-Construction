FROM alpine

WORKDIR /app

# Install miniserve to serve the static files
RUN apk add miniserve

ENV PORT="80"
EXPOSE $PORT

COPY static/* .

CMD miniserve --spa --index index.html --port $PORT
