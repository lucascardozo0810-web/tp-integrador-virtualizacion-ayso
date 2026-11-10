#!/usr/bin/env bash
# ==============================================================================
# TP Integrador: Virtualización y Computación en la Nube - AYSO (UTN 2026)
# Script de aprovisionamiento, hardening basico y verificacion de servicios
# ==============================================================================

set -euo pipefail

echo "=========================================="
echo " 1. Actualizacion de repositorios y base  "
echo "=========================================="
sudo apt-get update -y
sudo apt-get upgrade -y

echo "=========================================="
echo " 2. Instalacion de utilitarios y OpenSSH  "
echo "=========================================="
sudo apt-get install -y openssh-server net-tools curl ufw

echo "=========================================="
echo " 3. Configuracion y estado de OpenSSH     "
echo "=========================================="
sudo systemctl enable ssh
sudo systemctl restart ssh
sudo systemctl status ssh --no-pager

echo "=========================================="
echo " 4. Configuracion de Firewall (UFW)       "
echo "=========================================="
sudo ufw allow 22/tcp
sudo ufw --force enable
sudo ufw status verbose

echo "=========================================="
echo " 5. Verificacion de Red y Recursos        "
echo "=========================================="
echo "[*] Informacion de IP e Interfaces:"
ip -br addr show enp0s3 || ip addr

echo "[*] Kernel y Arquitectura:"
uname -a

echo "[*] Memoria RAM:"
free -h

echo "[*] Uso de Disco:"
df -h /

echo "=========================================="
echo " Aprovisionamiento finalizado con exito   "
echo "=========================================="
