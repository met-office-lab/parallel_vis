dask-worker ${var.scheduler_address}:8786 --http-port 8787 --worker-port 8788 --nanny-port 8789--host $(wget -qO- http://instance-data/latest/meta-data/local-ipv4) --nprocs $(grep -c ^processor /proc/cpuinfo) --nthreads 1