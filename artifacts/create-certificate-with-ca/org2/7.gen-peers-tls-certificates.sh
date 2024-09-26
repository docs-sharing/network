echo
echo "Generate the peer0-tls certificates"
echo "==================================="
echo

fabric-ca-client enroll -u https://peer0:peer0pw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls \
    --enrollment.profile tls \
    --csr.hosts peer0.org2.example.com \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem

mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/tlscacerts
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/tlscacerts/tlsca.org2.example.com-cert.pem

#----------------------------
echo
echo "Generate the peer1-tls certificates"
echo "==================================="
echo
  
fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls \
    --enrollment.profile tls \
    --csr.hosts peer1.org2.example.com \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem

mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp/tlscacerts
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp/tlscacerts/tlsca.org2.example.com-cert.pem

