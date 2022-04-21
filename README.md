# T2SKit

基于leaf的Tun2Socks实现，TUN ---> leaf ---> Clash。

```json
{
    "log": {
        "level": "warn"
    },
    "inbounds": [
        {
            "protocol": "tun",
            "settings": {
                "fd": 5
            },
            "tag": "tun"
        }
    ],
    "outbounds": [
        {
            "protocol": "socks",
            "settings": {
                "address": "127.0.0.1",
                "port": 7891
            },
            "tag": "clash"
        }
    ]
}
```
