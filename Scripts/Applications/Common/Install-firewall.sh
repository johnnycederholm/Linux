#!/bin/bash
echo "Install firewall..."

apt install -y nftables firewalld firewall-config firewall-applet
