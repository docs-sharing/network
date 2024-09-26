export FABRIC_CFG_PATH=${PWD}/../config

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/../crypto-config/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051

label=basic
version=1

PACKAGE_ID=$(sed -n "/${label}_${version}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
echo PackageID is ${PACKAGE_ID}

set -x

peer lifecycle chaincode approveformyorg -o localhost:7050 \
    --tls --cafile ../crypto-config/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
    --channelID channel-org --name basic --version 1 --sequence 1 \
    --package-id ${PACKAGE_ID} --init-required