//
//  SignupFormModelValidator.swift
//  unit_testing_demoTests
//
//  Created by Yi Chun Chiu on 2024/4/9.
//

import XCTest
@testable import unit_testing_demo

final class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        let sut = SignupFormModelValidator()
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Sergy")
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
    }

}
