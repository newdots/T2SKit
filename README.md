# T2SKit

基于leaf的Tun2Socks实现。

```json
{
    "log": {
        "level": "warn"
    },
    "inbounds": [
        {
            "protocol": "tun",
            "settings": {
                "fd": \(TUN_FILE_DESCRIPTOR)
            },
            "tag": "tun"
        }
    ],
    "outbounds": [
        {
            "protocol": "socks",
            "settings": {
                "address": "\(SOCKS5_HOST_ADDRESS)",
                "port": \(SOCKS5_PROT)
            },
            "tag": "clash"
        }
    ]
}
```

TUN ---> leaf ---> TARGET
