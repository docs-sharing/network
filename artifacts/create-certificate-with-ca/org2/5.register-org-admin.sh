export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org2.example.com/

echo
echo "Register the org admin"
echo "======================"
echo

fabric-ca-client register --caname ca.org2.example.com \
    --id.name org2admin --id.secret org2adminpw --id.type admin \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem
