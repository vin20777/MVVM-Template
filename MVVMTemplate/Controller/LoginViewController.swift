//
//  LoginViewController.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/6/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var inputBottomConstraint: NSLayoutConstraint!
    
    private let userViewModel = UserViewModel()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTextField()
    }
    
    // MARK: Private
    private func setupTextField() {
        emailTextField.delegate = self
        pwdTextField.delegate = self
        emailTextField.keyboardType = .emailAddress
        pwdTextField.isSecureTextEntry = true
        emailTextField.attributedPlaceholder =
            NSAttributedString(string: "Email",
                               attributes: [.foregroundColor: UIColor.darkGray,
                                            .font: UIFont(name: Theme.mainFontName, size: 20.0)!])
        pwdTextField.attributedPlaceholder =
            NSAttributedString(string: "Password",
                               attributes: [.foregroundColor: UIColor.darkGray,
                                            .font: UIFont(name: Theme.secondFontName, size: 20.0)!])
    }
    
    // MARK: Action
    @IBAction func loginAction(_ sender: UIButton) {
        let state = userViewModel.validate()
        switch state {
        case .invalid(let error):
            print(error)
        default:
            userViewModel.login { (errorMsg) in
                guard errorMsg == nil else {
                    print(errorMsg!)
                    return
                }
                self.performSegue(withIdentifier: "Login.IceCream", sender: self)
            }
        }
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        inputBottomConstraint.constant += 200
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        inputBottomConstraint.constant = 30
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveLinear, animations: {
            self.view.layoutIfNeeded()
        })
        
        guard let nonEmpty = textField.text else {
            return
        }
        
        if textField == emailTextField {
            userViewModel.updateUserMail(mail: nonEmpty)
        }
        if textField == pwdTextField {
            userViewModel.updatePassword(password: nonEmpty)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
