//
//  AuthenticationStructs.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 03/04/22.
//

import Foundation

struct SignUpUser {
    let fullname: String
    let email: String
    let password: String
    
    var signUpUserDict: [String: Any] {
        return [
            "name": fullname,
            "email": email,
            "password": password
        ]
    }
}//End of struct

struct SingleUserResponse: Codable {
    let customerId: Int
    let name: String
    let email: String
    let password: String
    let customerFeedbacks: String?
    let customerOrders: String?
}//End of struct

struct loginUser {
    let email: String
    let password: String
    
    var loginUserDict: [String: Any] {
        return [
            "email": email,
            "password": password
        ]
    }
}//End of struct
