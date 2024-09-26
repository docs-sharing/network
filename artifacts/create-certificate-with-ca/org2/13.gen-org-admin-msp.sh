echo
echo "Generate the org admin msp"
echo "=========================="
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com

fabric-ca-client enroll -u https://org2admin:org2adminpw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem

# Copy nodous from msp of org to msp of admin
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp/config.yaml