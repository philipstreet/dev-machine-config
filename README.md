# Dev Machine Config

This repo contains a collection of scripts and config files used for platform engineering development on a Windows 11 computer using WSL2.

## Assumptions

1. Host machine is running Windows 11.
2. Linux environment is Ubuntu via WSL2.

## How to use

Some of the Windows install scripts use the "scoop" utility, so it is recommended to install that one first.

1. Clone this repo onto your machine.
2. If Scoop is not installed then open a Windows Terminal (PowerShell) and run ./scoop/install.ps1.
3. Run the relevant install.ps1 or install.sh file for the tool/config required.

## Scripts/Configs by Platform

| Script/Config | Ubuntu | Windows |
| --------------- | -------- | --------- |
| Scoop         |        | Y       |
| Nerd Fonts    | Y      | Y       |
| Starship      | Y      | Y       |
