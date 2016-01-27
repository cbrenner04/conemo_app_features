# Conemo App Features

This test suit utilizes Appium to test features in the
[Conemo application](https://github.com/cbitstech/conemo_app).

Make sure you have the most recent version of the app built by using the
instructions that can be found in the link above.

You will need to update the path to the apk in `env.rb` with the path on your
machine. This is also true for the `appium.txt`. The `appium.txt` file is
present only for the use of the appium ruby console (arc).

You will need to run this on a phone plugged into your machine via USB.

In order to configure the application you will need to run the
[conemo_dashboard](https://github.com/cbitstech/conemo_dashboard) locally.
Because you will be interacting with the local version of the dashboard, you
will need to enable "Port forwarding". This can be done via Chrome. Open the
browser and type in "chrome://inspect". You will see a button "Port forwarding",
select that. The "Port" should be "3000" and the "IP address and port" should
be "localhost:3000". Select "Enable port forwarding" at the bottom and select
"Done". You should only need to do this once but you may have to open
chrome://inspect and check to make sure there is a green light
next to your device name with ":3000".

Once the dashboard is run locally you will need to set up a configuration
token for your test participant. To do this, navigate to "localhost:3000",
login as `user_100` (see fixture data in the conemo_dashboard for email and
password). Select "ADMIN" in the top left corner and choose "Participants"
from the menu. Find participant with study identifier "1000" and select the
"i" on the right to go to their details page. In the URL, after "participant/",
you will see a number. Copy that number and insert it into the following URL
"http://localhost:3000/entities/<number from previous URL goes here>/tokens".
This will take you to the configuration token management page. You will need
to create a token for this participant to run the app. For now you will need
to manually enter the configuration token to set up the app.

Start Appium server in the terminal.

```
appium &
```

Run the specs in a new window.

```
rspec
```
