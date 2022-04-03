//
//  UserDefaults.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 03/04/22.
//

import Foundation

class myUserDefaults: UserDefaults{

    //MARK: - Check Login
    func setLoggedIn(value: String) {
        set(value, forKey: UserDefaultsKeys.userID.rawValue)
    }

    //MARK: - Retrieve login
    func getLoggedInUser() -> Int? {
        return value(forKey: UserDefaultsKeys.userID.rawValue) as? Int
    }
    
}//End of extension
