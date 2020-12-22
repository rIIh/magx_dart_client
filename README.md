# Magx Dart client

Dart Client for MagX multiplayer game server.

## Usage

A simple usage example:

```dart
import 'package:magx_client/magx_client.dart';

main() {
  var client = new MagxClient(MagxClientParams());
}
```

### Connecting to server

```dart
import 'package:magx_client/magx_client.dart';

main() async {
    final client = MagxClient(
        MagxClientParams(address: 'localhost', port: 3001, secure: true),
        tokenStorage: MemoryTokenStorage(),
    );
    
    // authenticate
    await client.authenticateGuest(deviceId: 'random_identifier');
    
    // or verify your session
    // if token is not provided it will take token from [TokenStorage]
    await client.verify(token: 'optional_token');
    
    // get available rooms
    final rooms = await client.getRooms(["room_name"]);
    
      // create new room
    final room = await client.createRoom(name, params);
    
    // or join to existing room
    final room = await client.joinRoom(roomData);
    
    // or reconnect to room
    final room = await client.connectRoom(roomData, reconnect: boolean);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/rIIh/magx_dart_client/issues
