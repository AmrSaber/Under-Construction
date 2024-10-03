# Under Construction
A small and simple app to be used as a place holder until the real app is released.

## Usage
### Manual
Just use any server to serve static files found in `static` directory.

### Docker
You can use the docker image with

```bash
docker run ghcr.io/amrsaber/under-construction
```

The docker image uses [miniserve](https://github.com/svenstaro/miniserve) to serve the static files. The image uses and exposes port `80` by default, you change the port using `PORT` env variable. 