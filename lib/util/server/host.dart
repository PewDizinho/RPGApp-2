import 'dart:io';

class ServerHost {
  void main() async {
    final server = await ServerSocket.bind('localhost', 3000);
    print('Server started on ${server.address}:${server.port}');

    server.listen((socket) {
      print('Client connected: ${socket.remoteAddress}:${socket.remotePort}');

      socket.listen((data) {
        final message = String.fromCharCodes(data).trim();
        print('Received message: $message');
      }, onError: (error) {
        print('Error: $error');
      }, onDone: () {
        print('Client disconnected');
      });
    }, onError: (error) {
      print('Error: $error');
    });

    // Sending message from another device in the same room
    final client = await Socket.connect('localhost', 3000);
    print('Connected to server: ${client.remoteAddress}:${client.remotePort}');

    client.writeln('Hello, server!');

    client.listen((data) {
      final message = String.fromCharCodes(data).trim();
      print('Received message: $message');
    }, onError: (error) {
      print('Error: $error');
    }, onDone: () {
      print('Disconnected from server');
    });
  }
}


/**
 * 
 * TODO
 * Gotta ask gpt how do i make a autentication, to like, ?key= to individuals information but now i gotta go sleep
 */