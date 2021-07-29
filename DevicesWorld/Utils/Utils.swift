//
//  Utils.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 27/07/21.
//

import Foundation

final class Utils {
    
    static func createData() ->  [Device] {
        
        let iPhoneX = Device(id: 1, name: "iPhoneX", year: 2012)
        let iPhoneXR = Device(id: 2, name: "iPhoneXR", year: 2013)
        
        return [iPhoneX, iPhoneXR]
    }
    
}
