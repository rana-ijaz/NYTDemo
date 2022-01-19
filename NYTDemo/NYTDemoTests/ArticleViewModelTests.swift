//
//  ArticleViewModelTests.swift
//  NYTDemoTests
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import XCTest
@testable import NYTDemo

class ArticleViewModelTests: XCTestCase {

    var viewModel:ArticleViewModel!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       viewModel = ArticleViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testShouldRequestSend() {
        viewModel.setTimePeriod(timePeriod: TimePeriod.Month)
        
        XCTAssertFalse(viewModel.shouldSendRequest(targetTimePeriod: TimePeriod.Month))
        
        XCTAssertTrue(viewModel.shouldSendRequest(targetTimePeriod: TimePeriod.Week))
        
    }
    
    func testFilterBy() {
        viewModel.setTimePeriod(timePeriod: TimePeriod.Week)
        
        XCTAssertTrue(viewModel.filterBy().elementsEqual("Week"))
    }
    
    func testNetWorkCall() {
        viewModel.articles.bind { (articles) in
            XCTAssertTrue(articles.count != 0)
        }
        viewModel.fetchArticles()
    }
}
