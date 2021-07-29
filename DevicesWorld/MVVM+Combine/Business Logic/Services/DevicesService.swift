//
//  DevicesService.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import Combine

protocol DevicesServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getDevices() -> AnyPublisher<[Device], Error>
    func getDevice(id: Int) -> AnyPublisher<Device, Error>
}

final class DevicesService: DevicesServiceProtocol {
    
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getDevices() -> AnyPublisher<[Device], Error> {
        return Just(Utils.createData()).setFailureType(to: Error.self).eraseToAnyPublisher()
    }
    
    func getDevice(id: Int) -> AnyPublisher<Device, Error> {
        
        let devices = Utils.createData()
        
        if let i = devices.firstIndex(where: { $0.id == id }) {
            return Just(devices[i]).setFailureType(to: Error.self).eraseToAnyPublisher()
        }
        
        return Just(Device(id: 0, name: "", year: 0)).setFailureType(to: Error.self).eraseToAnyPublisher()
    }
    
}
