# burst-dockerfile
Dockerfile for Burst Miner & Plotter (Linux)

* **Plotter:** omdcct v0.1 (https://github.com/alter3d/omdcct)
* **Miner:** creepMiner v1.6.0 (https://github.com/Creepsky/creepMiner)

:moneybag: Donations welcomed at `BURST-8GDX-8DTV-MHNB-HQX3F` :bow:

### Plotting via Docker
    docker pull ewrogers/burst-plotter:latest
    docker run -it \
      -v /home/burst:/mnt/burst \
      ewrogers/burst-plotter -k $WALLET_NUMERIC_ID -d /mnt/burst/plots -n 614400

**NOTE:** See [omdcct usage](https://github.com/alter3d/omdcct) for more information on command line arguments.

### Mining via Docker
    docker pull ewrogers/burst-miner:latest
    docker run -d \
      -v /home/burst:/mnt/creepMiner \
      --restart always \
      --name burst-miner \
      ewrogers/burst-miner
      
**NOTE:** This assumes your `mining.conf` is in the directory mounted as `/mnt/creepMiner` from the host (i.e. `/home/burst`). You can mount one or more additional volumes for plots, **example:** `-v /media/usb/drive1:/mnt/drive1`.

See [Setting up the Miner](https://github.com/Creepsky/creepMiner/wiki/Setting-up-the-miner) for more information on configuration options.
