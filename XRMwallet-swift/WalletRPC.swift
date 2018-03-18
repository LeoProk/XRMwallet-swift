//
//  WalletRPC.swift
//  XRMwallet-swift
//
//  Created by user on 3/16/18.
//  Copyright © 2018 user. All rights reserved.
//

import Foundation
import Alamofire

class WalletRPC{
    init(command:String) {
        switch command {
        case "balance":
            //get the balance of the wallet
            getBalance()
        default:
            return
        }
    }
    func sendMonero() {
        
    }
    
    
    func getBalance() -> String {
        //connecto to remote node 
        let yay = Alamofire.request("http://mine.moneropool.com:3333/pool/blocks",method: .get).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response?.statusCode))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
        return ""
    }
}
