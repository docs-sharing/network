export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org2.example.com/

echo
echo "Register peer0"
echo "=============="
echo
fabric-ca-client register --caname ca.org2.example.com \
    --id.name peer0 --id.secret peer0pw --id.type peer \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem


echo
echo "Register peer1"
echo "=============="
echo
fabric-ca-client register --caname ca.org2.example.com \
    --id.name peer1 --id.secret peer1pw --id.type peer \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem
