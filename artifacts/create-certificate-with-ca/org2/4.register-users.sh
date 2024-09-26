export FABRIC_CA_CLIENT_HOME=${PWD}/../crypto-config/peerOrganizations/org2.example.com/

  echo
  echo "Register user"
  echo "============="
  echo
  fabric-ca-client register --caname ca.org2.example.com \
    --id.name user1 --id.secret user1pw --id.type client \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem
