#!/usr/bin/bash
pokemon=$1
url="https://pokeapi.co/api/v2/pokemon/${pokemon}"
id=$(curl -s $url | jq -r '.id')
name=$(curl -s $url | jq -r '.name')
weight=$(curl -s $url | jq -r '.weight')
height=$(curl -s $url | jq -r '.height')
order=$(curl -s $url | jq -r '.order')
printf "Id = ${id} Name = ${name} Weight = ${weight} Height = ${height} Order = ${order}. \n"
