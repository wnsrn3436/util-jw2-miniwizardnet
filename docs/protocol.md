# Protocol spec

Every exchange is made of a message ID and slots. `→` marks a server reply.

## Connect

- `id[0]` client: announces it joined the login room (slot 0 = 1)
  - `→ id[1]` server: basic info and notices (slots 0-12 = notices)
  - `→ id[6]` server: basic info 2 (slot 0 = author, slot 1 = version)

## Login

- `id[2]` client: login request (slot 0 = ID, slot 1 = password)
  - `→ id[3]` server: result (slot 0 = 1 no such ID or wrong password, slot 0 = 2 pass)

## Sign up

- `id[4]` client: sign-up request (slot 0 = ID, slot 1 = password)
  - `→ id[5]` server: result (slot 0 = 1 duplicate ID, slot 0 = 2 pass)

## Lobby

- `id[7]` client: enters the lobby (slot 0 = 1)
  - `→ id[8]` server: broadcasts the updated player list to everyone (slot 0 = player list)
- `id[9]` client: leaves (slot 0 = own ID)
  - `→ id[8]` server: broadcasts the updated player list to everyone (slot 0 = player list)
- `id[10]` client → all clients: global chat (slot 0 = one formatted line, `ID - chat text`). Broadcast between clients with no server handler
