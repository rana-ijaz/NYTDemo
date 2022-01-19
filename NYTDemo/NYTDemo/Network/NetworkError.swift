//
//  NetworkError.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import Foundation


class NetworkError {
    var statusCode : Int! {
        didSet{
            self.title = "Error"
            switch statusCode {
            case Int(CFNetworkErrors.cfurlErrorNotConnectedToInternet.rawValue):
                self.errorMessage = "Cannot Connect To Internet"
            case 404:
                self.title = "No Data"
                self.errorMessage = "Resource Not found"
            case Int(CFNetworkErrors.cfurlErrorCannotConnectToHost.rawValue):
                self.errorMessage = "Unable To Access Server"

            default:
                self.errorMessage = "Something went wrong. Please try again later."
            }
            
        }
    }
    var errorMessage : String!
    var title : String!
}
