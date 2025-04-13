FROM alpine

WORKDIR /app

# Install miniserve to serve the static files
RUN apk add miniserve curl

HEALTHCHECK --interval=5s --start-period=30s --start-interval=1s CMD curl -f "localhost:$PORT" || exit 1

ENV PORT="80"
EXPOSE $PORT

COPY static/* .

CMD miniserve --spa --index index.html --port $PORT
