#!/bin/bash

#User input
account_sid = "AC11111111a11111a1a111111a1aa11aa1"
auth_token = "11a1111aa1a111a1aaa11aaa11a11aaa"
log_type = "Transcriptions" #Set to Calls, Messages, or Transcriptions

event_sid=(
#Copy paste Call/Message/Transcript SIDs here
#Example:
#"TRaa11111a11a111111a1111aa11aa1111"
#"TRaa11111a11a111111a1111aa11aa1111"
#"TRaa11111a11a111111a1111aa11aa1111"
)

for i in "${event_sid[@]}";
 do curl -X DELETE https://api.twilio.com/2010-04-01/Accounts/$account_sid/$log_type/"$i".json -d "Body=" -u $account_sid:$auth_token
done;
