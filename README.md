# burst-miner
Dockerfile for Burst Miner (Linux)

**Miner:** creepMiner v1.6.3 (https://github.com/Creepsky/creepMiner)

:moneybag: Donations welcomed at `BURST-8AH9-WZXA-7SFE-H4BNG` :bow:

### Mining via Docker
    docker run -d \
      -p 8080:8080 \
      -v /home/miner:/mnt/miner \
      --restart always \
      --name creep-miner \
      ewrogers/creep-miner:latest
      
**NOTE:** This assumes your `mining.conf` is in the directory mounted as `/mnt/miner` from the host (i.e. `/home/miner`).

You can mount one or more additional volumes for plots, **example:** `-v /media/usb/disk1:/mnt/disk1`

See [Setting up the Miner](https://github.com/Creepsky/creepMiner/wiki/Setting-up-the-miner or https://github.com/Creepsky/creepMiner/wiki/Quickstart) for more information on configuration options.
All props go to ewrogers
