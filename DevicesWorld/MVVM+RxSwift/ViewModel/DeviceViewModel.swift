//
//  DeviceViewModel.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 27/07/21.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

final class DeviceViewModel {

    var devices: BehaviorRelay<[Device]>
    
    init() {
        devices = BehaviorRelay<[Device]>(value: Utils.createData())
    }
}
