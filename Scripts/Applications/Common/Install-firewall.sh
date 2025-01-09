#!/bin/bash
source ./Common.sh

info "Install firewall..."

apt install -y nftables firewalld firewall-config firewall-applet
