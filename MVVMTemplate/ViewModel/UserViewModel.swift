//
//  UserViewModel.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/6/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import Foundation

enum UserValidationState {
    case valid
    case invalid(String)
}

class UserViewModel {
    
    private let minPasswordLength = 5
    private var user: User = User(mail: "", password: "")
    
    var userMail: String {
        return user.mail
    }
    
    var password: String {
        return user.password
    }
    
    func updateUserMail(mail: String) {
        user.mail = mail.lowercased()
    }
    
    func updatePassword(password: String) {
        user.password = password
    }
    
    /* Make your own validation or store mechanism */
    func hashpassword(password: String) -> String {
        
        return "hash"
    }
    
    func validate() -> UserValidationState {
        if userMail.isEmpty || password.isEmpty {
            return .invalid("Email and password are required.")
        }
        if userMail.contains("@") == false {
            return .invalid("Wrong email format.")
        }
        if password.count < minPasswordLength {
            return .invalid("Password needs to be at least \(minPasswordLength) characters long.")
        }
        return .valid
    }
    
    /* DEMO email: CatMeo@mmo.org; password: meow1234 */
    func login(completion: ((_ errMsg: String?) -> Void)) {
        if userMail == "catmeow@mmo.org" && password == "meow1234" {
            completion(nil)
        } else {
            completion("Wrong email or password.")
        }
    }
}
