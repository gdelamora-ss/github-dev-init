#!/usr/bin/env bash

# What do I want this file to do?
# Series of question/answer pairs
# Only continue if conditions are met
# 1. Ask for github username and repeat the question if empty
# 2. then instruct user on generating PAT
# 3. Ask for PAT then repeat the question if empty
# TODO: github roving? I don't even have an account that :shrug:
# 4. Duplicate the template and replace the variable strings with the actual value
# 5. Tada
# TODO: Github config info
while true; do
    printf "👤 What is your Github username? "
    read GITHUB_COM_USERNAME
    if [ -z $GITHUB_COM_USERNAME ]; then
        printf "🛑 Github username can't be empty.\n"
        continue
    fi

    printf "👋 Nice to meet you, ${GITHUB_COM_USERNAME}.\n"

    while true; do
        printf "🚥\n"
        printf "  1️⃣  Generate a Personal Access Token (PAT) at https://github.com/settings/tokens.\n" 
        printf "  2️⃣  Select \"repo\" and \"write:packages\".\n" 
        printf "  3️⃣  Select **NO EXPIRATION**.\n"
        printf "📋 Paste it here: "
        read GITHUB_COM_AUTH_TOKEN
        if [ -z $GITHUB_COM_AUTH_TOKEN ]; then
            printf "🛑 PAT can't be empty.\n"
            continue
        fi
        break
    done
    # is there a better way of doing this other than declaring these vars as global?
    export GITHUB_COM_AUTH_TOKEN
    export GITHUB_COM_USERNAME
    envsubst '${GITHUB_COM_USERNAME},${GITHUB_COM_AUTH_TOKEN}' < "github.env.template" > "github.env"
    echo "✨ Your github.env file has been generated. ✨"
    break
done