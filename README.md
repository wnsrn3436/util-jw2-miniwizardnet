# Jurassic Primitive War 2 MiniWizardNet

[한국어](README.ko.md)

When WizardNet, the Battle.net of Jurassic Primitive War 2, shut down, I made this client and server project to bring it back myself.

The client recreates the login, sign up, lobby and chat screens with the original UI. The server stores accounts as files and relays the user list, while the clients broadcast global chat among themselves.

<p>
  <img src="docs/screenshots/screenshot-1.jpg" width="480" alt="Login screen">
</p>


## How to use

Download the archive from Releases and extract it to get the `client` and `server` folders.

Start the server first. Run `server/miniwizardnet-server.exe` and it starts accepting connections. Then run `client/miniwizardnet-client.exe`, sign up and log in, and you enter the lobby where you can chat with other users.

Set the server address to connect to in `client/Server_Infor.ini`. It defaults to `127.0.0.1`, so running the server and client together on the same machine works right away. That file holds only the server address and your own display name. To change the server name or the notice shown on the login screen, edit `server/Server_Infor.ini`.


## How it works

**The protocol is built on message IDs and slots.** Every exchange has a number, and each number defines which value goes in which slot. For example, 2 is a login request with the ID in slot 0 and the password in slot 1, and the server answers with 3, carrying pass or fail in slot 0. The full spec is in [docs/protocol.md](docs/protocol.md).

**Serialization joins values with a separator.** GameMaker's built-in multiplayer carries only one value per message, so I added a layer on top of it. The variable arguments are sent joined with `^`, and the receiving side splits them into an array.

```gml
// sender
for(i=2; string(argument[i])!='0'; i+=1)
{
  dit_wait = dit_wait+string(argument[i])+'^'
}
mplay_message_send_guaranteed(argument0, argument1, dit_wait)

// receiver
sk_dit_car(mplay_message_value(), argument0, '^')
```

**Scripts are split by message number.** The client holds handler scripts only for the numbers it receives (1, 3, 5, 6, 8, 10), and the server only for the ones it receives (0, 2, 4, 7, 9). The file list alone shows which side handles what.

**Accounts are stored as files.** Each account is one numbered text file such as `_id_/id_0.txt`, with the ID on the first line and the password on the second. Signing up creates the next numbered file and reloads the list.


## Files

| Path | Contents |
|---|---|
| `source/client/` | Client project file and the text tree split out by GmkSplitter |
| `source/server/` | Server project file and the text tree split out by GmkSplitter |
| `docs/protocol.md` | Message ID and slot specification |
| `docs/screenshots/` | Screenshots |
| Releases | Client and server executables |


## Credits

The Korean text drawing scripts (`source/client/split/Scripts/한글_드로우/`, `source/server/split/Scripts/한글_드로우/`) were made by 김게맛 (sodium031) of the GameMaker community.


## License

zlib license. See [LICENSE](LICENSE) for details. Bundled libraries made by other people follow their own licenses.
