//
//  SClass.swift
//  Swift Framework
//
//  Created by Chris Mash on 08/06/2021.
//

/**
 This is my awesome Swift class
 */
public class SClass: NSObject {
    /// This is my awesome Swift function
    @objc public func getInt() -> Int {
        return 1
    }
    
    @objc public func intToString(_ int: Int) -> String {
        return ""
    }
    
    @objc public func tryIntToString(_ int: Int) -> String? {
        return nil
    }
}
