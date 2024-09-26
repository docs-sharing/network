export FABRIC_CFG_PATH=${PWD}/../config

chaincode_path=../src/go
chaincode_name=basic
version=1

peer lifecycle chaincode package ${chaincode_name}.tar.gz \
                                --path ${chaincode_path} \
                                --lang golang \
                                --label ${chaincode_name}_${version}

echo "------ Chaincode is packaged on peer0.org1 ------"