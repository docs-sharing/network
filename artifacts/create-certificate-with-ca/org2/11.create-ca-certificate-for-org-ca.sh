echo
echo "Copy ca certificate from cacerts directory of peer level to ca of organization level"
echo

mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/ca
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/ca/ca.org2.example.com-cert.pem
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/keystore/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/ca/priv_sk