//
//  DeviceDetailViewModel.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import UIKit
import Combine

class DeviceDetailViewModel: ObservableObject {
    
    public let device: Device
    
    init(device: Device) {
        self.device = device
    }

}
