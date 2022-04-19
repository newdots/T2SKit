import Foundation

@_silgen_name("startTun2Socks") private func rust_startTun2Socks(_ config: UnsafePointer<CChar>!) -> Int32

@_silgen_name("stopTun2Socks") private func rust_stopTun2Socks() -> Bool

public enum Tun2Socks {
    
    public static func start(config: String) -> Int32 {
        rust_startTun2Socks(config.cString(using: .utf8))
    }
    
    public static func stop() -> Bool {
        rust_stopTun2Socks()
    }
}
