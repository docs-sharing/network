echo
echo "Copy tls ca certificate from tlscacerts directory of peer level to msp of organization level"
echo

mkdir ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/tlscacerts
cp ${PWD}/../crypto-config/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/peerOrganizations/org2.example.com/msp/tlscacerts/ca.crt