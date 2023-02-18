#!/bin/sh

# since all dirs are relative, make sure I'm in the root of the git repo
cd $(dirname $0)
mkdir -p certs

# generate a key pair for the CA
openssl genrsa -out "certs/ca-key.pem" 4096
openssl req -new -x509 -days 3650 \
    -subj "/CN=Local CA" \
    -key "certs/ca-key.pem" -sha256 -out "certs/ca.pem"

# generate a new host key pair
openssl genrsa -out "certs/server-key.pem" 2048
# generate certificate signing request (CSR)
openssl req -subj "/CN=localhost" -new -key "certs/server-key.pem" -out "certs/server.csr"
# setup extfile for ip's to allow
echo "subjectAltName = DNS:localhost, IP:127.0.0.1" >"certs/extfile.cnf"
# sign the key by the CA
openssl x509 -req -days 365 -in "certs/server.csr" -CA "certs/ca.pem" -CAkey "certs/ca-key.pem" \
  -CAcreateserial -out "certs/server-cert.pem" -extfile "certs/extfile.cnf"

cat "certs/server-cert.pem" "certs/ca.pem" > "certs/server-cert-chain.pem"
