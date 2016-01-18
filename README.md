# Dockerized CSGO Dedicated Server

# Usage
## Classic Casual
 docker run -it -p 27015:27015 joaofidalgo/csgo -game csgo -console -usercon +game_type 0 +game_mode 0 +mapgroup mg_active +map de_dust2

## Classic Competitive
 docker run -it -p 27015:27015 joaofidalgo/csgo -game csgo -console -usercon +game_type 0 +game_mode 1 +mapgroup mg_active +map de_dust2

## Arms Race
 docker run -it -p 27015:27015 joaofidalgo/csgo -game csgo -console -usercon +game_type 1 +game_mode 0 +mapgroup mg_armsrace +map de_lake

## Demolition
 docker run -it -p 27015:27015 joaofidalgo/csgo -game csgo -console -usercon +game_type 1 +game_mode 1 +mapgroup mg_demolition +map de_lake

## Deathmatch
 docker run -it -p 27015:27015 joaofidalgo/csgo -game csgo -console -usercon +game_type 1 +game_mode 2 +mapgroup mg_active +map de_dust2

# Extending this image
 If you want to add your server config files, this image offers an extension point at the cfg folder.

 1. Create your Dockerfile using joaofidalgo/csgo as the base image
 2. Add your config files under the folder "cfg"
 3. Build and run your image using docker
