# A very basic HTTP server
require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  # Hello World Song by Louie Zong
  context.response.print "Hello world, Programmed to work and not to feel Not even sure that this is real, Hello, world got #{context.request.path}!"
end

puts "Listening on http://127.0.0.1:8080"
server.listen(8080)
