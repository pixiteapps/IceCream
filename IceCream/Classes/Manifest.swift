//
//  LogConfig.swift
//  IceCream
//
//  Created by 蔡越 on 30/01/2018.
//

import Foundation
import PixiteLogging

/// This file is for setting some develop configs for IceCream framework.

public class IceCream {
    
    public static let shared = IceCream()
    
    /// There are quite a lot `print`s in the IceCream source files.
    /// If you don't want to see them in your console, just set `enableLogging` property to false.
    /// The default value is true.
    public var enableLogging: Bool = true
    
}

/// If you want to know more,
/// this post would help: https://medium.com/@maxcampolo/swift-conditional-logging-compiler-flags-54692dc86c5f
internal func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    if (IceCream.shared.enableLogging) {
        var i = items.startIndex
        repeat {
            //Swift.print(items[i], separator: separator, terminator: i == (items.endIndex - 1) ? terminator : separator)
            // redirect logging to PixiteLogging so we can have our custom logging to files
            plog(.info, String(describing:items[i]))
            i += 1
        } while i < items.endIndex
    }
}
