//
//  DevicesViewModel.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import Combine

class DevicesViewModel: ObservableObject {
    
    @Published public var devices : [Device] = []
    
    private var devicesService: DevicesServiceProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(devices: [Device] = [], devicesService: DevicesServiceProtocol = DevicesService()) {
        self.devices = devices
        self.devicesService = devicesService
    }
    
    public func onAppear() {
        getDevices()
    }
    
    private func getDevices() {
        devicesService.getDevices()
            .receive(on: DispatchQueue.main)
            .sink { (completion) in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished: break
                }
            } receiveValue: { [weak self] (devices) in
                self?.devices = devices
            }
            .store(in: &cancellables)

    }
    
    
}
