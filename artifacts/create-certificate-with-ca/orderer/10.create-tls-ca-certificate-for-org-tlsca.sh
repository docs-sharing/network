echo
echo "Copy tls ca certificate from tlscacerts directory of orderer level to tlsca of organization level"
echo

mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/tlsca
cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/tls/tlscacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/tlsca/tlsca.example.com-cert.pem