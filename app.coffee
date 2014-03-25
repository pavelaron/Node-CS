# Load the http module to create an http server.
http = require 'http'

# Configure our HTTP server to respond with Hello World to all requests.
server = http.createServer (request, response) ->
  response.writeHead 200,
    "Content-Type": "text/plain"

  response.end "Hello World\n"
  return

# Listen on port 8080, IP defaults to 127.0.0.1
port = 8080
server.listen port

# Put a friendly message on the terminal
console.log "Hello World!"

sq = require './square.coffee'
sq5 = sq.sqr 5

console.log "Five squared equals #{sq5}"
console.log "Server running at http://127.0.0.1:#{port}/"