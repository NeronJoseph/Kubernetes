#!/bin/bash

#To view the details of any certificate, use the following command along with the certificate that we need to view the details of. 
#The example shows the details of the certificate 'ca.crt'
openssl x509 -in ca.crt -text -noout