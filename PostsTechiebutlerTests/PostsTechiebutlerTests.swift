//
//  PostsTechiebutlerTests.swift
//  PostsTechiebutlerTests
//
//  Created by juber99 on 25/04/24.
//

import XCTest
@testable import PostsTechiebutler

final class PostsTechiebutlerTests: XCTestCase {
    
    var suit: PostViewModel = PostViewModel()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAPIWithValidResponse() async {
        //Arrange
        let apiManager = APIManager()
        do{
            //ACT
            let posts: [PostModel] = try await apiManager.fetchApis(pageNumber: 0)
            //ASSERT
            XCTAssertNotNil(posts)
        
        }catch{
            //ASSERT
            XCTAssertThrowsError(APIError.InvalidUrlError)
        }
        
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            suit.loadDataFromAPI()
        }
    }

}
