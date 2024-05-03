//
//  UsersProvider.swift
//  poly
//
//  Created by english on 2023-11-30.
//
import Foundation
class UsersProvider {

    static var all = [Users]()

    static func generateMockData() {
        UsersProvider.all.append(Users(name: "pepe", email: "pepe@mail.com", password: "123" ))
        UsersProvider.all.append(Users(name: "pepa", email: "pepa@mail.com", password: "123" ))
        
    }

}
