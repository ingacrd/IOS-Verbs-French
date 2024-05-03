//
//  UserModel.swift
//  poly
//
//  Created by english on 2023-11-09.
//

import Foundation
class Users {
    public var email : String = ""
    public var pasword: String = ""
    public var name: String = ""
    public var id: Int = 0
    public var expiration: Int = 0
    public var token: String = ""
    //public var score
    
    init(email: String, pasword: String) {
        self.email = email
        self.pasword = pasword
    }
    //Question can i have more than one init
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.pasword = password
    }
    
    //TODO method createUser that assign the id and save the new user in provider/API
    //TODO method loginUser that look for the user in provider/API returns an expiration session, user name, and token
}

