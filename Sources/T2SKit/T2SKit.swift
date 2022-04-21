import Foundation
import T2SKitC

public enum Tun2Socks {
        
    public static func start(fd: Int32, host: String, port: Int) {
        let config: String = """
        {
            "log": {
                "level": "warn"
            },
            "inbounds": [
                {
                    "protocol": "tun",
                    "settings": {
                        "fd": \(fd)
                    },
                    "tag": "tun"
                }
            ],
            "outbounds": [
                {
                    "protocol": "socks",
                    "settings": {
                        "address": "\(host)",
                        "port": \(port)
                    },
                    "tag": "clash"
                }
            ]
        }
        """
        start_tun2socks(config.cString(using: .utf8))
    }
    
    public static func stop() {
        stop_tun2socks()
    }
}
