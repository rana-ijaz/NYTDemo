//
//  ArticleRepository.swift
//  NYTDemo
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import Foundation

let NYT_API_KEY = "hc6VvvX8Chw2x3LnRNzLGufM9lS1sPOM"

enum TimePeriod : String {
    case Day = "1"
    case Week = "7"
    case Month = "30"
    
    static let names = [Day, Week, Month]
    
    var name: String {
        switch self {
        case .Day:
            return "Day"
        case .Week:
            return "Week"
        case .Month:
            return "Month"
        }
    }
    
    init(rawValue: String){
        switch rawValue {
        case TimePeriod.Day.name:
            self = .Day
        case TimePeriod.Week.name:
            self = .Week
        case TimePeriod.Month.name:
            self = .Month
        default:
            self = .Day
        }
    }
    
}

class ArticleRepository: NYTServiceAPI {
    
    var timePeriod = TimePeriod.Day
    override var path: String! {
        return "/mostpopular/v2/mostviewed/all-sections/\(timePeriod.rawValue).json?api-key=\(apiKey)"
    }
    
    override var httpMethod: HttpMethod! {
        return .get
    }
    
    func fetchArticles(complete :@escaping (ArticleResponse) -> Void, failure:@escaping onFailure) {
        self.network.request(self.httpRequest, success: { (response: ArticleResponse) in
            complete(response)
        }) { (error: NetworkError) in
            failure(error)
        }
    }
}
