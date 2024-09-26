export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/ordererOrganizations/example.com

fabric-ca-client register --caname ca-orderer \
    --id.name ordererAdmin --id.secret ordererAdminpw \
    --id.type admin --tls.certfiles ${PWD}/../fabric-ca/ordererOrg/tls-cert.pem
