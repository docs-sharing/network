echo
echo "Copy ca certificate from cacerts directory of peer level to ca of organization level"
echo

mkdir ${PWD}/../crypto-config/peerOrganizations/org1.example.com/ca

cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/msp/cacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem
cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/msp/keystore/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/ca/priv_sk