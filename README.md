# Empty shell falcon application

## Features
There is one endpoint that is implemented:

```
POST /hello
{"message": "hello world"}
```

You can use curl to call it this way

```
curl -iw "\n" http://localhost:8000/hello -H 'content-type: application/json' -d '{"message":"James"}'
```

## Reading falcon documentation
You could start up the container and do something like this

```
make build
docker run --rm -ti my_app_img python
>>> import falcon
>>> help(falcon.api)
```
