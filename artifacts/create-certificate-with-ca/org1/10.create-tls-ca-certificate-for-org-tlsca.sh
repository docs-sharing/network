echo
echo "Copy tls ca certificate from tlscacerts directory of peer level to tlsca of organization level"
echo

mkdir ${PWD}/../crypto-config/peerOrganizations/org1.example.com/tlsca
cp ${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem
