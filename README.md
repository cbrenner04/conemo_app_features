# Conemo App Features

This test suit utilizes Appium to test features in the
[Conemo application](https://github.com/cbitstech/conemo_app).

To run this suite you will need to run the testing server in the above repo.
This can be done by running 

```
node path/to/conemo_app/test/support/dummy_server.js
```

You will then need to build the app following the instructions in the above
repo except you will need to change the server to http://127.0.0.1:1337. For
example:

```
LOCALE=es-PE SERVER=http://127.0.0.1:1337 npm run install:android
```

You will need to update the path to the apk in `env.rb` with the path on your
machine. This is also true for the `appium.txt`. The `appium.txt` file is
present only for the use of the appium ruby-console (arc).

You will need to run this on a phone plugged into your machine via USB.

You will need to enable port forwarding so your app can talk to your server.
You can do this by going to `chrome://inspect` in Chrome, selecting "Port
forwarding" and add "Port": `1337` and "IP address and port":
`127.0.0.1:1337`. Finally you will need to select "Enable port forwarding" and
then select "Done". You should see next to your device name a green light with
"1337" next to it. 

Once everything above has been done once, below are the steps you will take to
run the suite:

Open the terminal and run (this can be from any directory):

```
node path/to/conemo_app/test/support/dummy_server.js
```

Open Chrome and go to `chrome://inspect`. You should see your device and it
should have a green light with "1337" next to it.

Open a new tab in the terminal and run (this can be from any directory):

```
appium &
```

Open a third tab in the terminal and run (from within this directory):

```
rspec
```
