//
//  NetworkConfigTests.swift
//  NYTDemoTests
//
//  Created by Rana Ijaz on 19/01/2022.
//  Copyright © 2022 Rana Ijaz. All rights reserved.
//

import XCTest
@testable import NYTDemo

class NetworkConfigTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBaseURL() {
        
        XCTAssertNotNil(NetworkConfiguration.baseURL())
    }

}
