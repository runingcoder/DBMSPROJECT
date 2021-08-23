import os
from twilio.rest import Client


# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure
account_sid = os.environ['TWILIO_ACCOUNT_SID']
auth_token = os.environ['TWILIO_AUTH_TOKEN']
client = Client(account_sid, auth_token)

message = client.messages.create(

                              body='Hi there, this is what I am talking about, part 2',
                              from_='+18622256163',
                              to='+977 984-3812816'
                          )

print(message.sid)