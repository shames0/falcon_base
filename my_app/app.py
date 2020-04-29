import falcon

api = application = falcon.API()

class Foo:
    def on_post(req, resp):
        message = req.media.get("message")

        resp.media = {"message": message}
        resp.status = falcon.HTTP_200

api.add_route('/hello', Foo)

