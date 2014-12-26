

#open a port
listener = open('80')

0 2^32

conn = listener.listen()

request = conn.read()


lines = request.split("\n")
r1 = lines[0]
tokens = r1.split(' ')
tokens[1]
'GET / HTTP 1.1
Host: google.com
Content-Type: text/html'

verb = 'GET'
proto = 'http1.1'
path = '/'


conn.write('
           200 OK
           Content-Type: text/html
           Content-Length: 2323

           <h1>Hello World</h1>
           ')
