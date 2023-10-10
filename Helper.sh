#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout selfsigned.key -out selfsigned.crt -subj "/CN=tomer-mtg/O=tomer-mtg" -addext "subjectAltName = DNS:tomer-mtg" 
kubectl create secret tls tomer-mtg-selfsigned --cert=selfsigned.crt --key=selfsigned.key
kubectl apply -f resources/ingress.yaml