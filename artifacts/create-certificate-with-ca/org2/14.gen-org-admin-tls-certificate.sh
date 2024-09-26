echo
echo "Generate the org admin tls"
echo "=========================="
echo

fabric-ca-client enroll -u https://org2admin:org2adminpw@localhost:8054  \
    --caname ca.org2.example.com \
    -M ${PWD}/../crypto-config/peerOrganizations/org2.example.com/users/Admin@org2.example.com/tls \
    --enrollment.profile tls \
    --csr.hosts localhost \
    --tls.certfiles ${PWD}/../fabric-ca/org2/tls-cert.pem