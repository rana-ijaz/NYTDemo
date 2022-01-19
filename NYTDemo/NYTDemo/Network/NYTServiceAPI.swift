//
//  NYTServiceAPI.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import Foundation

class NYTServiceAPI: WebServiceApi {
    
    override var baseUrl: String! {
        
        NetworkConfiguration.baseURL()
    }
    
    var apiKey: String {
      get {
        // 1
        guard let filePath = Bundle.main.path(forResource: "NYTime", ofType: "plist") else {
          fatalError("Couldn't find file 'TMDB-Info.plist'.")
        }
        // 2
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "key") as? String else {
          fatalError("Couldn't find key 'API_KEY' in 'TMDB-Info.plist'.")
        }
        return value
      }
    }
    
}
