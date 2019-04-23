//
//  IceCreamViewController.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/7/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import UIKit

class IceCreamViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let iceCreamViewModel = IceCreamViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    
//    // Look at demo project in mvc_to_mvvm_demo
//    fileprivate func fetchData() {
//        Service.shared.fetchXXXX { (XXXX, err) in
//            guard let err == nil else {
//                print("Fail to fetch XXXX: ", err)
//                return
//            }
//            XXXX.map({ return XXXXViewModel(XXXX: $0)})
//            self.XXXX = XXXX ?? []
//            self.tableView.reloadData()
//        }
//    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        iceCreamViewModel.readIceCreams {
            self.tableView.reloadData()
        }
    }
}

extension IceCreamViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.iceCreams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SimpleTableViewCell = tableView.dequeueReusableCell(withIdentifier: "simpleCell") as! SimpleTableViewCell
        
        cell.titleLabel.text = Data.iceCreams[indexPath.row].name
        cell.gradientLabel.text = Data.iceCreams[indexPath.row].ingredients?.joined(separator: ", ")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}
