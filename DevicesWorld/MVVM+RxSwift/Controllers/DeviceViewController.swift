//
//  DeviceViewController.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 27/07/21.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
    
final class DeviceViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = DeviceViewModel()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.devices.bind(to: tableView.rx.items(cellIdentifier: "DeviceTableViewCell", cellType: DeviceTableViewCell.self)) {
            (row, device, cell) in
            cell.device = device
        }.disposed(by: disposeBag)

        tableView.tableFooterView = UIView()
    }

}
