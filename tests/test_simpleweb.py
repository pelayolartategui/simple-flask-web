from app.simpleweb import hello

def test_hello():
    """
    GIVEN a any user
    WHEN a user visits our website
    THEN he/she should be greeted with a "Hello World!" message
    """
    assert hello() == "Hello World!"
