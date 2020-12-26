# -*- coding: utf-8 -*-
require "socket"

listening_socket = TCPServer.open(12345)

puts listening_socket.fileno

puts "accepting"
socket = listening_socket.accept
puts "accepted"
puts socket.fileno

socket.close

listening_socket.close
