//
//  VRHomeInteractorCase.swift
//  VIPERTestTests
//
//  Created by SanW on 2021/7/15.
//  Copyright © 2021 BytesFlow. All rights reserved.
//

@testable import VIPERTest
import XCTest

class VRHomeInteractorCase: XCTestCase {
    var inte: VRHomePageInteractor?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        inte = VRHomePageInteractor()
        debugPrint("setUp")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        inte = nil
        debugPrint("tearDown")
        super.tearDown()
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let data = inte?.loadRequestData(count: 20)
        debugPrint("testExample：\(inte?.dataSource.count ?? 0)")
        XCTAssertTrue(data?.count == 20)
    }

    func testIndexPath() throws {
        let data = inte?.loadRequestData(count: 15)
        debugPrint("testIndexPath：\(inte?.dataSource.count ?? 0)")
        XCTAssertNotNil(inte?.dataIndexPath(indexPath: IndexPath.init(item: 14, section: 0)))
        XCTAssertTrue(inte?.dataIndexPath(indexPath: IndexPath.init(item: 14, section: 0))?.title == "测试标题：15")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        debugPrint("testPerformanceExample")
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}
