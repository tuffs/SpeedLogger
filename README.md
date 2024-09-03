# SpeedLogger - README FIRST!!!
A script to log your internet speed to a specific file.

## Dependencies
Ookla Speedtest must be installed to your device to run this logging script.
In order to ensure you have this application running. You can open a terminal
emulator and run the command `speedtest`. You should get a internet speedtest
occurrance in result. If you see something like "... file not found" you will
need to install the application onto your computer.

If you do not have the application installed already. Visit Ookla Speedtest's
command line interface (CLI) at [https://www.speedtest.net/apps/cli] and
install the correct version of the application based on your operating system.

## Settings
Open the speedlogger.sh script with a text based editor and change the location of:
  - `LOG_FILE="$HOME/internet_speed_log.md"` - to a location you desire, or leave
  it where it is to log to your home directory.

## Running The Script
Ensure that you can run this shell file by making it accessible to write to disk
with the command:
  - `$ chmod +x speedlogger.sh`
  - Run the sript with `./speedlogger.sh
  - You can run this script from its location to automatically log your speed to
    file as often as you would like, each speed test by Ookla provides a results
    URL. So a log of this script would give you a URL to each of the speedtests
    to verify them.
  - Each entry will begin with a timestamp based on your computers local time
    settings.
  - The next step will go over the process of setting up repititious runs of this
    script every fifteen minutes (or your own interval).

## Chron Tasks - Repeatedly Run Your SpeedLogger
Follow the instructions below to properly setup your crontab task for SpeedLogger.
  - Open the crontab `$ crontab -e`
  - Add the following to the crontab file in a new line:
    `*/15 * * * * /path/to/your/SpeedLogger/speedlogger.sh`
    - Where 15 is the number of minutes in the interval, you can change this value
    should you choose.
      - Visit Crontab.guru [https://crontab.guru] to generate your own interval
      outside of the 60 minute window you see presented by the columnar value
      `*/15` where `*/24` would represent running every 24 minutes.
  - Ensure your task is operational by running `$ crontab -l`