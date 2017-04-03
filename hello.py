def app(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type','text/plain')]
    start_response(status, response_headers)
	get_params = environ['QUERY_STRING'].split('&')
	resp_data = [item + '\r\n' for item in get_params]
    return resp_data