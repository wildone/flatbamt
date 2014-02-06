#!/bin/bash

# themeBackup – A script to backup Wells's custom-configured BAMT
# web theme to a tar.gz file and put in the root web directory
#
# PARAMETERS
# none
#
version="0.1"

# exit if error
set -e

copyto=./$basedir/theme

echo "  Welcome to themeBackup v$version
Preparing to backup files from BAMT..."
cd $basedir
mkdir theme
mkdir theme/{cgi-bin,var-www,var-www-bamt,opt-bamt}

echo "  Copying files..."
sleep 1

echo -ne '  [                                        ]   0%\r'


sleep .06
echo -ne '  [============                            ]  30%\r'

  sudo cp /usr/lib/cgi-bin/status.pl $copyto/cgi-bin/

sleep .06
echo -ne '  [==================                      ]  45%\r'


sleep .06
echo -ne '  [========================                ]  60%\r'

  sudo cp /var/www/{apple-touch-icon.png,favicon.ico,sat.png,mgpumon.png,mg-favicon.ico,mg-apple.png} $copyto/var-www/

sleep .09
echo -ne '  [==============================          ]  75%\r'

  sudo cp /var/www/bamt/{check32.png,error.png,error24.png,error32.png,mgpumon.css,network-error.png,ok.png,ok24.png,ok32.png,status.css} $copyto/var-www-bamt/
  sudo cp /opt/bamt/mgpumon $copyto/opt-bamt/

sleep .09
echo -ne '  [====================================    ]  90%\r'

  sudo tar czf theme.tar.gz theme
  sudo mv theme.tar.gz /var/www/
  sudo rm -rf theme

sleep .05
echo -ne '  [========================================] 100%\r'
sleep .1

echo -ne '\n  All done! Be sure to read the README.md for further instructions. \n'