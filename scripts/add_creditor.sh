API=${1:-http://localhost:8888}
cleos -u $API push action bankofstaked addcreditor '{"account": "charity.bank", "for_free": 1, "free_memo": "A gift from EOSLaoMao team"}' -p bankofstaked
cleos -u $API push action bankofstaked addcreditor '{"account": "staking.bank", "for_free": 0, "free_memo": "a gift from staking.bank"}' -p bankofstaked
cleos -u $API push action bankofstaked activate '{"account": "charity.bank"}' -p bankofstaked
cleos -u $API push action bankofstaked activate '{"account": "staking.bank"}' -p bankofstaked
