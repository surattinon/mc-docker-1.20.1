#!/bin/bash
docker exec services-mc-1 rcon-cli say "Server will stop in 15 second"
sleep 10
docker exec services-mc-1 rcon-cli say "Saving world, server will stop in 5 second"
docker exec services-mc-1 rcon-cli save-all
sleep 5
docker compose -f ./services/mc-server.yaml down
