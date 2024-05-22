#!/bin/bash
docker exec services-mc-1 rcon-cli say "================================"
docker exec services-mc-1 rcon-cli say "🔴🔴🔴 Begin stop server 🔴🔴🔴"
docker exec services-mc-1 rcon-cli say "================================"
docker exec services-mc-1 rcon-cli say "Begin save the world in 5 second"
docker exec services-mc-1 rcon-cli say "================================="
sleep 5
docker exec services-mc-1 rcon-cli say "Saving world"
docker exec services-mc-1 rcon-cli save-all
sleep 3
docker exec services-mc-1 rcon-cli say "================================"
docker exec services-mc-1 rcon-cli say "✅✅ Save world successful ✅✅"
docker exec services-mc-1 rcon-cli say "================================"
sleep 2
docker exec services-mc-1 rcon-cli say "⏰ Server will stop in 15 second"
sleep 5
docker exec services-mc-1 rcon-cli say "⏰ Server will stop in 10 second"
sleep 5
docker exec services-mc-1 rcon-cli say "⏰ Server will stop in 5 second"
sleep 5
docker compose -f ./services/mc-server.yaml down
