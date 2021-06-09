//
//  SClass.swift
//  Swift Framework
//
//  Created by Chris Mash on 08/06/2021.
//

public class SClass: NSObject {
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
