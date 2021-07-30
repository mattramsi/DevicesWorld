//
//  MoreInfoView.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import SwiftUI

struct MoreInfoView: View {
    
    let viewModel: MoreInfoViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Name: \(viewModel.device.name ?? "N/A")")
            Text("Year: \(viewModel.device.year)")
        }
    }
    
}

struct MoreInfoView_Previews: PreviewProvider  {
    static var previews: some View {
        MoreInfoView(viewModel: MoreInfoViewModel(device: Device(id: 0, name: "", year: 0)))
    }
}

final class MoreInfoConfigurator {
    
    static func configureMoreInfoView(with device: Device) -> MoreInfoView {
        let viewModel = MoreInfoViewModel(device: device)
        return MoreInfoView(viewModel: viewModel)
    }
}
