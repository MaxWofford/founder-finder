A=$(curl -G --user 'api:pubkey-88bf59d3abc78c15e460d4dc653d5160' -G \
    https://api.mailgun.net/v2/address/validate \
    --data-urlencode address=$1 | jq '. | {is_valid: .is_valid} | .is_valid')

echo $A
