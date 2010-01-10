# Jurassic Primitive War 2 MiniWizardNet

A client and server project made to bring back WizardNet, the Battle.net of Jurassic Primitive War 2, after the service shut down.

The client recreates the login, sign up, lobby and chat screens with the original UI. The server stores accounts as files and relays the user list. Global chat is broadcast directly between clients.

<p>
  <img src="docs/screenshots/screenshot-1.jpg" width="480" alt="Login screen">
</p>


## How to use

Download from Releases and extract it to get the `client` and `server` folders.

Start the server first. Running `server/miniwizardnet-server.exe` starts accepting connections. Then run `client/miniwizardnet-client.exe`, sign up and log in to enter the lobby and chat with other users.

The server address is set in `client/Server_Infor.ini`. It defaults to `127.0.0.1`, so running the server and client on the same machine works right away. That file holds only the server address and your own display name. The server name and the notice shown on the login screen are set in `server/Server_Infor.ini`.


## How it works

**The protocol is built on message IDs and slots.** Every exchange has a number, and each number defines which value goes in which slot. For example, 2 is a login request with the ID in slot 0 and the password in slot 1, and the server answers with 3, carrying pass or fail in slot 0. The full spec is in [docs/protocol.md](docs/protocol.md).

**Serialization joins values with a separator.** GameMaker's built in multiplayer carries only one value per message, so a layer was added that joins variable arguments with `^` on the sending side and splits them into an array on the receiving side.

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

**Scripts are split by message number.** The client holds handler scripts only for the numbers it receives (1, 3, 5, 6, 8, 10) and the server only for its own (0, 2, 4, 7, 9). The file list alone shows which side handles what.

**Accounts are stored as files.** One numbered text file such as `_id_/id_0.txt` is one account. The first line is the ID and the second is the password. Signing up creates the next numbered file and reloads the list.


## Files

| Path | Contents |
|---|---|
| `source/client/` | Client project file and the text tree produced by GmkSplitter |
| `source/server/` | Server project file and the text tree produced by GmkSplitter |
| `docs/protocol.md` | Message ID and slot specification |
| `docs/screenshots/` | Screenshots |
| Releases | Client and server executables |


## Credits

The Korean text scripts under `source/client/split/Scripts/한글_드로우/` and `source/server/split/Scripts/한글_드로우/` were written by 김게맛 (sodium031) of the GameMaker community.


## License

zlib. See [LICENSE](LICENSE). Bundled libraries made by other people keep their own licenses.
