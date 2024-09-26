
echo
echo "Generate the orderer msp"
echo "========================"
echo
   
mkdir -p ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com
fabric-ca-client enroll -u https://orderer:ordererpw@localhost:9054 \
    --caname ca-orderer \
    -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp \
    --csr.hosts orderer.example.com \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/ordererOrg/tls-cert.pem
   
cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/config.yaml



echo
echo "Generate the orderer2 msp"
echo "========================="
echo
   
mkdir -p ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com

fabric-ca-client enroll -u https://orderer2:ordererpw@localhost:9054 \
    --caname ca-orderer \
    -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp \
    --csr.hosts orderer2.example.com \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/ordererOrg/tls-cert.pem
   
cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer2.example.com/msp/config.yaml



echo
echo "Generate the orderer3 msp"
echo "========================="
echo

mkdir -p ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com

fabric-ca-client enroll -u https://orderer3:ordererpw@localhost:9054 \
    --caname ca-orderer \
    -M ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp \
    --csr.hosts orderer3.example.com \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/ordererOrg/tls-cert.pem
   
cp ${PWD}/../crypto-config/ordererOrganizations/example.com/msp/config.yaml ${PWD}/../crypto-config/ordererOrganizations/example.com/orderers/orderer3.example.com/msp/config.yaml
