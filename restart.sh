#!/bin/bash
docker exec services-mc-1 rcon-cli say "Server will restart in 15 second"
docker compose -f ./services/mc-server.yaml exec backups backup now
docker exec services-mc-1 rcon-cli say "Saving world..."
docker exec services-mc-1 rcon-cli save-all
sleep 15
docker compose -f ./services/mc-server.yaml down
sleep 5
docker compose -f ./services/mc-server.yaml up -d
