//
//  DeviceDetailView.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 29/07/21.
//

import Foundation
import SwiftUI

struct DeviceDetailView: View {
  
    @ObservedObject var viewModel: DeviceDetailViewModel
  
    let screenWidth = UIScreen.main.bounds.width
    
    @State private var showingModalSheet = false
    
    
    var body: some View {
        VStack {
            Image(uiImage: UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screenWidth * 0.2, height: screenWidth * 0.2, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                .padding()
            
            HStack {
                Text(viewModel.device.name)
                Text("\(viewModel.device.year)")
            }
            
            Button {
                showingModalSheet.toggle()
            } label: {
                Text("Get more info")
                .padding()
                .frame(width: screenWidth * 0.6)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(16)
            }.sheet(isPresented: $showingModalSheet) {
//                UserDetailRouter.destinationForMoreInfoAction(user: viewModel.user)
            }.padding(.top, 20)
            
            Spacer()
            
        }
        .navigationTitle(viewModel.device.name)
        .onAppear {
            print("doNothing")
        }
    }
    
}

struct DeviceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceDetailView(viewModel: DeviceDetailViewModel(device: Device(id: 0, name: "", year: 0)))
    }
}

final class DeviceDetailConfigurator {
    
    public static func configureUserDetailView(with device: Device) -> DeviceDetailView {
        
        let userDetailView = DeviceDetailView(
            viewModel: DeviceDetailViewModel(device: device)
        )
        
        return userDetailView
    }
}

final class DeviceDetailRouter {

//    public static func destinationForMoreInfoAction(device: Device) -> some View {
//        return MoreInfoConfigurator.configureMoreInfoView(with: device)
//    }
}
