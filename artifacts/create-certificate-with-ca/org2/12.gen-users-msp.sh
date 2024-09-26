echo
echo "Generate the user msp"
echo "====================="
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/User1@org2.example.com

fabric-ca-client enroll -u https://user1:user1pw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/User1@org2.example.com/msp \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem
