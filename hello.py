def app(environ, start_response):
	status="200 OK"
	responce_headers=[('Content-Type', 'text/plain')]
    start_response(status,responce_headers)
	get_params = environ['QUERY_STRING'].split("&")
	resp_data = [item + "\r\n" for item in get_params]
    return resp_data