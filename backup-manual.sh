#!/bin/bash
docker compose -f ./services/mc-server.yaml exec backups backup now
