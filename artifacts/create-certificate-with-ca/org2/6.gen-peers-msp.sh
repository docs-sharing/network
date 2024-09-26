echo
echo "Generate the peer0 msp"
echo "======================"
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com

fabric-ca-client enroll -u https://peer0:peer0pw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp \
    --csr.hosts peer0.org2.example.com \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem

# Copy nodous from msp of org to peer0 msp
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/config.yaml


#----------------------------
echo
echo "Generate the peer1 msp"
echo "======================"
echo

mkdir -p ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com

fabric-ca-client enroll -u https://peer1:peer1pw@localhost:8054 \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp \
    --csr.hosts peer1.org2.example.com \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem

# Copy nodous from msp of org to peer0 msp
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/config.yaml ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer1.org2.example.com/msp/config.yaml



