def app(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type', "text/plain; charset=utf-8")]
    start_response(status, response_headers)
    resp = environ['QUERY_STRING'].split("&")
    resp = [item + "\r\n" for item in resp]
    return iter(resp)
