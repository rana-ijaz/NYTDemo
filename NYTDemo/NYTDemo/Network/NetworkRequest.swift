//
//  NetworkRequest.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import Foundation

typealias ResultSuccess<T> = (T) -> Void
typealias ResultFailure = (NetworkError)  -> Void

protocol NetworkRequest {
    
    func request<T: Decodable>(_ request : URLRequest, success : @escaping ResultSuccess<T>,failure : @escaping ResultFailure)
    
}
