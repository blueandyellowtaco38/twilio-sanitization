# twilio-sanitization
Delete logs quickly using Twilio API

## Delete Logs
* In Twilio, access the logs you wish to purge
    * Calls: Monitor - Logs - Calls
    * Messages: Monitor - Logs - Messages
    * Transcriptions: Monitor - Logs - Call transcripts
* Click the button to export to CSV
* In the spreadsheet, copy the 'SID' column
* Paste the list into the array `event_sid`
* Note that each SID will need to be wrapped in quotes. Use a text editor of your choice, or see below for my method
* Set `account_sid` and `auth_token` to your Twilio account information
* Set `log_type` to either 'Calls', 'Messages', or 'Transcriptions' depending on what logs you are purging
* Run the script:

```
$ bash delete_twilio_logs.sh
```

## Wrap SID List in Quotes
* After pasting the list in delete_twilio_logs.sh, open the script in VI or VIM:

```
$ vi delete_twilio_logs.sh
```
* Navigate cursor down to the first SID using `j` or `k` keys
* Use the following series of keystrokes, substitute `5` for the number of rows you wish to wrap with quotes (keys are case-sensitive): 

   ```qq I " ESC A " ESC j q 5 @ q```

* Type `ZZ` to save and exit the file
