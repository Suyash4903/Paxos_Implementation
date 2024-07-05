#!/bin/bash

# Compile the server and client programs
g++ -o server server.cpp
g++ -o client client.cpp

# Function to run the server
run_server() {
    gnome-terminal -- bash -c "./server; exec bash"
}

# Function to run a client
run_client() {
    gnome-terminal -- bash -c "./client; exec bash"
}

# Run the server in a new terminal
run_server

# Run three client instances in separate terminals
for i in {1..3}
do
    run_client
    sleep 1  # Short delay between starting clients
done

echo "Server and clients started in separate terminals."
echo "Press Enter to terminate all processes..."
read

# Kill all server and client processes
killall server
killall client

echo "All processes terminated."
