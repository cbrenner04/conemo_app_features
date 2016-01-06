# Conemo App Features

This test suit utilizes Appium to test features in the
[Conemo application](https://github.com/cbitstech/conemo_app).

Make sure you have the most recent version of the app built by using the
instructions that can be found in the link above.

You will need to update the path to the apk in `env.rb` with the path on your
machine. This is also true for the `appium.txt`. The `appium.txt` file is
present onliy for the use of the appium ruby console (arc).

Start Appium server in the terminal.

```
appium &
```

Run the specs in a new window.

```
rspec
```
