#!/bin/bash

# themeRestore – A script to install Wells Riley's BAMT web theme.
#
# PARAMETERS
# none
#
version="0.1"

# exit if error
set -e

basedir=$(dirname $0)


if [ -f "theme.tar.gz" ]; then
  tar -xzf theme.tar.gz
else
  echo "The theme file does not exist. Aborting."
  exit
fi

if [ -d "theme" ]; then
  # set the miner_id to the miner passed to the script
  copyfrom=$basedir/theme

  echo "  Welcome to themeRestore v$version
Preparing to clone files into BAMT..."
  cd $(dirname $0)
  echo "  Copying files..."
  sleep 1

  echo -ne '  [                                        ]   0%\r'

    sudo cp $copyfrom/cgi-bin/status.pl /usr/lib/cgi-bin/

  sleep .06
  echo -ne '  [========================                ]  60%\r'

    sudo cp $copyfrom/var-www/* /var/www/

  sleep .09
  echo -ne '  [==============================          ]  75%\r'

    sudo cp $copyfrom/var-www-bamt/* /var/www/bamt/
    sudo cp $copyfrom/opt-bamt/mgpumon /opt/bamt/
    sudo chmod 777 /opt/bamt/mgpumon
    sudo chown root:root /opt/bamt/mgpumon

  sleep .09
  echo -ne '  [====================================    ]  90%\r'

  sleep .05
  echo -ne '  [========================================] 100%\r'

    echo -ne '\n  Removing temporary files...'
    sudo rm ./theme.tar.gz
    sudo rm -r ./theme


  echo -ne '\n  All done! Be sure to read the README.md for next steps.\n'

  else
    echo "Could not untar the theme file. Aborting."
    exit
  fi