#!/bin/bash

echo "introduzca los MB: "
read MB

let BYTES=MB*1024*1024
echo "son $BYTES bytes"


#segun profesor
let MB=$1*1024*1024
echo "EL NUMERO DE BYTES DE $1 ES $MB"
