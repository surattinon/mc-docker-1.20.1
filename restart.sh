#!/bin/bash
docker exec services-mc-1 rcon-cli say "=========================="
docker exec services-mc-1 rcon-cli say "Begin restarting server"
docker exec services-mc-1 rcon-cli say "=========================="
docker exec services-mc-1 rcon-cli save-all
sleep 5
docker exec services-mc-1 rcon-cli say "Server will restart in 15 second"
sleep 5
docker exec services-mc-1 rcon-cli say "Server will restart in 10 second"
docker compose -f ./services/mc-server.yaml exec -d backups backup now
sleep 5
docker exec services-mc-1 rcon-cli say "Server will restart in 5 second"
sleep 5
docker compose -f ./services/mc-server.yaml down
docker compose -f ./services/mc-server.yaml up -d
