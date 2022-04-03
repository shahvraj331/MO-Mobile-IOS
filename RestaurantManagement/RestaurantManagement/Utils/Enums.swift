//
//  Enums.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 03/04/22.
//

import Foundation

enum ApiUrl: String {
    case baseURL = "https://jaydemorestaurant.herokuapp.com/home/"
}

enum ApiEndPoints: String {
    case login = "login"
    case signup = "signup"
}

enum UserDefaultsKeys : String {
    case isLoggedIn
    case userID
}
