# 🅿️🅿️🅿️ordle: PlaidCTF 2022 Problem

![](https://img.shields.io/badge/Category-Misc-brightgreen)
![](https://img.shields.io/badge/Author-luke-blue)
![](https://img.shields.io/badge/Testers-bluepichu%2C%20strikeskids-blueviolet)
![](https://img.shields.io/badge/Flag%201-350%20points%2C%206%20solves-orange)
![](https://img.shields.io/badge/Flag%202-250%20points%2C%200%20solves-orange)

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
