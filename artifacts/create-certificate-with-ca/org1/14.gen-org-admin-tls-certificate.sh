echo
echo "Generate the org admin tls"
echo "=========================="
echo

fabric-ca-client enroll -u https://org1admin:org1adminpw@localhost:7054 \
    --caname ca.org1.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org1.example.com/users/Admin@org1.example.com/tls \
    --enrollment.profile tls \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/org1/tls-cert.pem