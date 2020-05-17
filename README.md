# Simple flask app

This is a simple flask app

1. create an .env file or define TAG with your desired tag.

2. Use ``docker-compose up`` to test. That will create an image named simpleweb:{$TAG}

3. Use ``docker run -p 5000:5000 simpleweb:${TAG}`` to run the app on port 5000