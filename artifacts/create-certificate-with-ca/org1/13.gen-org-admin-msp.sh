echo
echo "Generate the org admin msp"
echo "=========================="
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com

fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 \
    --caname ca.org1.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp \
    --tls.certfiles ${PWD}/../fabric-ca/org1/tls-cert.pem

# Copy nodous from msp of org to msp of admin
cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp/config.yaml