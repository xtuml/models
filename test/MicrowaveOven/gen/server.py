import http.server


class RequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cross-Origin-Opener-Policy', 'same-origin')
        self.send_header('Cross-Origin-Embedder-Policy', 'require-corp')
        http.server.SimpleHTTPRequestHandler.end_headers(self)


if __name__ == '__main__':
    httpd = http.server.HTTPServer(('', 8000), RequestHandler)
    httpd.serve_forever()
