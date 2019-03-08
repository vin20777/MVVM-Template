//
//  BaseViewController.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/7/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Theme.background
        
        setupEndingEdit()
    }
    
    func setupEndingEdit() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
