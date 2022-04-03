//
//  AlamofireRequest.swift
//  RestaurantManagement
//
//  Created by Vraj Shah on 03/04/22.
//

import Foundation
import Alamofire

class A: Decodable {
    
}

class AlamofireRequest {
    
    //MARK: - static functions
    static func addSingleUser(controller: UIViewController,singleUser: [String : Any], completion: @escaping (SingleUserResponse?) -> Void) {
        
        AlamofireRequest.request(controller: controller, url: ApiUrl.baseURL.rawValue + ApiEndPoints.signup.rawValue, method: .post, parameters: singleUser, requiredStatusCode: 201, decodingType: SingleUserResponse.self, completionHandler: completion)
    }
    
    static func loginUser(controller: UIViewController, userCredentials: [String : String], completion: @escaping (A?) -> Void) {
        AlamofireRequest.request(controller: controller, url: ApiUrl.baseURL.rawValue + ApiEndPoints.login.rawValue, method: .post, parameters: userCredentials, requiredStatusCode: 200, decodingType: A.self, completionHandler: completion)
    }
    
    //MARK: - fileprivate, static functions
    fileprivate static func request<T: Decodable>(controller: UIViewController, url: String, method: HTTPMethod, parameters: Parameters? = nil, requiredStatusCode: Int, headers: HTTPHeaders? = nil, decodingType: T.Type, completionHandler completion: @escaping (T?) -> Void) {
        let heades: HTTPHeaders = [
            "Content-Type": "application/x-www-form-urlencoded",
            "Accept": "application/json"
        ]
        AF.request(url, method: method, parameters: parameters, encoding: URLEncoding.queryString, headers: heades).response { response in
            switch response.result {
            case .success(let data):
                do {
                    if let responseData = data {
                        let dataFromServer = try JSONDecoder().decode(T.self, from: responseData)
                        completion(dataFromServer)
                    }
                } catch let error {
                    print(error)
                }
                break
            case .failure(let error):
                print(error)
                break
            }
        }
    }
    
}//End of class
