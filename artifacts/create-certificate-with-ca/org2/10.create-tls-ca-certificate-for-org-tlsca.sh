echo
echo "Copy tls ca certificate from tlscacerts directory of peer level to tlsca of organization level"
echo

mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/tlsca
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem
