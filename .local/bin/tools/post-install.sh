#!/bin/bash

# Színek definiálása
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Frissítés és alaprendszer telepítése
echo -e "${GREEN}Alaprendszer és frissítések telepítése...${NC}"
sudo pacman -Syu
sudo pacman -S --noconfirm base-devel git

# XanMod kernel telepítése
echo -e "${GREEN}XanMod kernel telepítése...${NC}"
paru -S --noconfirm linux-xanmod linux-xanmod-headers

# Nvidia driver telepítése
echo -e "${GREEN}Nvidia driver telepítése...${NC}"
paru -S --noconfirm nvidia-dkms

# Discord telepítése
echo -e "${GREEN}Discord telepítése...${NC}"
sudo pacman -S --noconfirm discord

# Steam telepítése
echo -e "${GREEN}Steam telepítése...${NC}"
sudo pacman -S --noconfirm steam

# Microsoft Edge telepítése
echo -e "${GREEN}Microsoft Edge telepítése...${NC}"
paru -S --noconfirm microsoft-edge-stable-bin

# Visual Studio Code telepítése
echo -e "${GREEN}Visual Studio Code telepítése...${NC}"
paru -S --noconfirm visual-studio-code-bin

# Proton-GE telepítése
echo -e "${GREEN}Proton-GE telepítése...${NC}"
paru -S --noconfirm proton-ge-custom-bin

# Heroic Game Launcher telepítése
echo -e "${GREEN}Heroic Game Launcher telepítése...${NC}"
paru -S --noconfirm heroic-games-launcher-bin

# Gamemode telepítése
echo -e "${GREEN}Gamemode telepítése...${NC}"
paru -S --noconfirm gamemode-git

# JamesDSP telepítése
echo -e "${GREEN}JamesDSP telepítése...${NC}"
paru -S --noconfirm jamesdsp

# Ventoy telepítése
echo -e "${GREEN}Ventoy telepítése...${NC}"
paru -S --noconfirm ventoy-bin

echo -e "${GREEN}Az összes szükséges program telepítve lett!${NC}"

