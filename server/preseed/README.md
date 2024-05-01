# Debian Auto-install

## Creating the preseed file

use `envsubst` to template:

    ./run_env.sh env.example envsubst < preseed.cfg.in

Upload it to a web server which the server can access.

## Installing

Create a debian ISO (netinst works too).
Start the installer and choose Automated installation from the Advanced options menu.

When prompted, type the preseed file location on the web server.
