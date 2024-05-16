#!/bin/bash
docker compose -f ./services/mc-server.yaml up -d
docker attach services-mc-1
