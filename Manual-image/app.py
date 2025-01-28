from http.server import SimpleHTTPRequestHandler
from socketserver import TCPServer

# Define the host and port
host = "0.0.0.0"
port = 8000

# Create a basic HTTP server
class MyHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.send_header('Content-type', 'text/plain')
            self.end_headers()
            self.wfile.write(b"Hello, World from Basic Python HTTP Server!")
        else:
            super().do_GET()

# Set up the server
with TCPServer((host, port), MyHandler) as httpd:
    print(f"Serving on {host}:{port}")
    httpd.serve_forever()
