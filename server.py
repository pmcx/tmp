import http.server
import socketserver
import socket

# Port number
PORT = 8080

# Request handler
Handler = http.server.SimpleHTTPRequestHandler

# Create an IPv6-only server
class IPv6Server(socketserver.TCPServer):
    address_family = socket.AF_INET6

with IPv6Server(("::", PORT), Handler) as httpd:
    print(f"Serving on IPv6 address :: and port {PORT}")
    httpd.serve_forever()
