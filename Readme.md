# Paxos Protocol Implementation

This repository contains an implementation of the Paxos distributed consensus protocol using C++. We have used server-client architecture for the implementation of the protocol. The Paxos protocol ensures consensus among a group of distributed nodes.

## Contents

- [Client](#client)
- [Server](#server)
- [How to Run](#how-to-run)

## Client

The client (`client.cpp`) is responsible for initiating the Paxos protocol by sending proposal messages to the server. It generates a proposal ID, establishes a connection with the server, sends the proposal, receives accept requests, and sends acceptance messages based on the received requests.

## Server

The server (`server.cpp`) is responsible for receiving proposal messages from multiple clients, coordinating the Paxos protocol, and ensuring consensus among the clients. It waits for connections from all clients, handles the Paxos protocol phases (proposal, accept, learn), and ensures that a majority of clients reach an agreement.

## How to Run

To run the Paxos protocol, follow these steps:

1. **Compile**: Compile both `client.cpp` and `server.cpp` using a C++ compiler. For example:
    ```bash
    g++ client.cpp -o client
    g++ server.cpp -o server
    ```

2. **Run Server**: Execute the following:
    ```bash
    ./server
    ```

3. **Run Clients**: Run multiple clients on different terminals with following:
    ```bash
    ./client
    ```

4. **Follow Console Output**: The console output of both the server and clients will display the progress of the Paxos protocol, including proposal, acceptance, and learning phases.


## Contributors

- Suyash Bhagat (202101085)
- Jeel Viradiya (202101164)
- Nishith Parekh (202101449)