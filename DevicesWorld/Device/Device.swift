//
//  Device.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 27/07/21.
//

import Foundation

struct Devices: Codable {
    
    let data: [Device]
    
}

struct Device: Codable, Identifiable {
    
    let id: Int
    let name: String
    let year: Int
    
}
