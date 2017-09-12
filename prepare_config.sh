#!/bin/bash

ORG1PRIVATEKEY=$(cat /shared/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/keystore/key.pem | base64 | tr -d '\n')
echo "Org1 Admin Private key is: ${ORG1PRIVATEKEY}"

ORG1CERT=$(cat /shared/crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/signcerts/Admin@org1.example.com-cert.pem | base64 | tr -d '\n')
echo "Org1 Admin Cert is: $ORG1CERT"

sed -i "s|ORG1PRIVATEKEY|${ORG1PRIVATEKEY}|g" /marbles/config/blockchain_container_service.json
sed -i "s|ORG1CERT|${ORG1CERT}|g" /marbles/config/blockchain_container_service.json
