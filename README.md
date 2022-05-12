# 🅿️🅿️🅿️ordle

PlaidCTF 2022 Problem

Category: Misc  
Author: luke
Tester(s): bluepichu, strikeskids
Flag 1 Points: 350
Flag 2 Points: 250

## Flavor Text

Web is out, retro is in. Play your favorite word game from the comfort of your terminal!

Too hard? Easy-mode, themes, and so much more coming soon as a part of the 🅿️🅿️🅿️ordle Plaidiverse Plus subscription package.

Please send buyout inquiries to @plaidctf on Twitter.

## Distribute

Generate with `make SERVER=domain.name`

Be sure to use GNU `sed` and `tar`. 

[`./pppordle.tar.gz`](./pppordle.tar.gz)

## Testing

Set environment variable `PPPORDLE_ENV=dev` to use development CA. Run server and client locally.
Solutions to each level are printed to log, so ignore those if trying to actually solve the challenge.  

See provided README for more info.

## Server setup

```
docker-compose up --build
```
Ports 1337-1341/tcp need to be reachable. 

## Solution

Lovely write-up by @SuperFashi here: https://ctftime.org/writeup/33231
