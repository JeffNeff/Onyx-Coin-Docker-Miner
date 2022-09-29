# Onyx-Coin-Docker-Miner
Dockerfile to create a container intended to mine Onyx coin.

More info on Onyx coin here -> https://github.com/ONYXcore/onyx


## Usage

Note. if you get lost building from source.. there is a pre-built image that you can use located at `tmjeff/onyx`

### Update

Update the Dockerfile variables to reflect your own wallet, server, etc. 

### Build
```
docker build -t onyxminer . 
```

### Run
```
docker run onyxminer 
```

### Push 
```
docker push -t onyxminer 
```

### Deploy
?

### ...Profit

