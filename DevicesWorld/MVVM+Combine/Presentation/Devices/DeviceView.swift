//
//  DeviceView.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import SwiftUI

struct DevicesView: View {
    
    @ObservedObject var viewModel: DevicesViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.devices) { device in
                
                NavigationLink(destination: DevicesRouter.destinationForTappedUser(device: device)) {
                    Text(device.name)
                }

            }.navigationTitle("Devices")
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

struct DevicesView_Previews: PreviewProvider {
    static var previews: some View {
        DevicesView(viewModel: DevicesViewModel())
    }
}

final class UsersConfigurator  {
    
    public static func configureDevicesView(with viewModel: DevicesViewModel = DevicesViewModel()) -> DevicesView {
        let devicesView = DevicesView(viewModel: viewModel)
        return devicesView
    }
    
}

final class DevicesRouter {
    
    public static func destinationForTappedUser(device: Device) -> some View {
        return DeviceDetailConfigurator.configureUserDetailView(with: device)
    }
}
