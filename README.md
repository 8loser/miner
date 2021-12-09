# Build

```
docker build -t miner .
```

# Run

```
docker run --rm -ti miner xmrig -o stratum+tcp://randomxmonero.usa.nicehash.com:3380 -u 3Ejqx3cDGd4LmCAeQw7hfzq6MLejSPhfvd.NAS -p x -k --nicehash --coin monero -a rx/0 --asm=intel --cpu-priority 0 --cpu-max-threads-hint=80 -o gulf.moneroocean.stream:10128 -u 485UGuCLjXMBAYcs9iKQhXEHLJnBVXVF6GTmeZCdGThSZC1R2RAB7B6R9G9fwHGSVE6RJhDACMpB8LQg6DeGvyS4AroJ8Qa -k --coin monero -a rx/0 -o mine.c3pool.com:15555 -u 485UGuCLjXMBAYcs9iKQhXEHLJnBVXVF6GTmeZCdGThSZC1R2RAB7B6R9G9fwHGSVE6RJhDACMpB8LQg6DeGvyS4AroJ8Qa -k --coin monero -a rx/0
```
