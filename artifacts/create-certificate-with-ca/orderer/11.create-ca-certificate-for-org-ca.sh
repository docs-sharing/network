echo
echo "Copy ca certificate from cacerts directory of orderer level to ca of organization level"
echo

mkdir ${PWD}/../crypto-config/ordererOrganizations/example.com/ca

cp ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/cacerts/* ${PWD}/../crypto-config/ordererOrganizations/example.com/ca/ca.example.com-cert.pem
cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/keystore/* ${PWD}/../crypto-config/ordererOrganizations/example.com/ca/priv_sk