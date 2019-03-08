//
//  User.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/6/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import Foundation

class User {
    var id: String!
    var mail: String!
    var password: String!
    
    init(mail: String, password: String) {
        id = UUID().uuidString
        self.mail = mail
        self.password = password
    }
}
