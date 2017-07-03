# burst-dockerfile
Dockerfile for Burst Miner & Plotter (Linux)

* Plotter: https://github.com/alter3d/omdcct
* Miner: https://github.com/cuthulino/BurstMiner/

:moneybag: Donations welcomed at `BURST-8GDX-8DTV-MHNB-HQX3F` :bow:

### Plotting via Docker
    docker pull ewrogers/burst-plotter:latest
    docker run -it \
      -v /home/burst:/mnt/burst \
      ewrogers/burst-plotter -k $WALLET_NUMERIC_ID -d /mnt/burst/plots -n 614400

**NOTE:** See [omdcct usage](https://github.com/alter3d/omdcct) for more information on command line arguments.

### Mining via Docker

