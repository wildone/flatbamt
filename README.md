# Flat UI theme for BAMT

### [Download Zip](https://github.com/wellsriley/flatbamt/archive/master.zip)

Distributed for free and with no license by Wells Riley

[twitter.com/wr](https://twitter.com/wr) --- [wells.ee](http://wells.ee) --- [github.com/wellsriley](http://github.com/wellsriley)

---------------------
BTC:  `1BrQpq4qdxnwJoD2WKKNMo4PLa8oi2mxAU`
DOGE: `DNbAod6Y4VcB9SzANMXAm5emj6gzQoTXsd`

---------------------

* **Note:** You just downloaded random files from a dude on the internet. He isn't responsible if you break your miner. Check the source code and _proceed at your own risk_. That being said, if you find a bug, please contact me @wr on Twitter or open a pull request on GitHub.
* **Note:** This was created and tested under BAMT 1.3 for R9 class AMD cards. Proceed at your own risk with other versions.

---------------------

## Security
After downloading the ZIP package for this theme, you should find a file
named `theme.tar.gz.sig` which you can use to:

* Verify that theme.tar.gz hasn't been tampered with, and
* Get proof that it really was authored by [Wells Riley](http://wells.ee/pgp).

`$ gpg --recv-key F14D9476`
`$ gpg --verify --with-fingerprint theme.tar.gz.sig theme.tar.gz`

And then verify the resulting signature's fingerprint against Wells Riley's published fingerprint at [http://wells.ee/pgp](http://wells.ee/pgp).

If you get warnings like "This key is not certified, there is no indication that
the key belongs to the owner" do not worry, this is normal.

---------------------

## Instructions

1.	Copy theme.tar.gz, themeBackup.sh, and themeRestore.sh to your BAMT miner's home directory.

2.	Run `./themeBackup` – this will create a tar.gz backup of your existing theme files and place it in /var/www/

3.	Run `./themeRestore` – this will copy the new theme files into their appropriate directories. This is a **destructive action!** *You backed up your old files, right? ;)*

4.	Type `sudo nano /etc/bamt/bamt.conf` and locate `miner_id`. Add a line underneath called `miner_name` and give your miner a human-readable name. For example, if your `miner-id` is `battlestar` you might want to use `Battlestar`.

5.	Press CTRL+O, Enter, then CTRL+X to save and exit.

6.	Reboot your miner `sudo coldreboot`.

-------------------

You might want to replace 	the satellite or amoeba icons with your own. Fortunately, I included the source file 	`theme.sketch` which is a Sketch.app (for Mac) vector file. I used the [Flat UI Colors](http://flatuicolors.com) palate and [Streamline icons](http://streamlineicons.com).