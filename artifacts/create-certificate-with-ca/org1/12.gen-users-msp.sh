echo
echo "Generate the user msp"
echo "====================="
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/User1@org1.example.com

fabric-ca-client enroll -u https://user1:user1pw@localhost:7054 \
    --caname ca.org1.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp \
    --tls.certfiles ${PWD}/../fabric-ca/org1/tls-cert.pem
