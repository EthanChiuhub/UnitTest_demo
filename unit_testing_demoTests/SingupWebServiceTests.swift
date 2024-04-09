//
//  SingupWebServiceTests.swift
//  unit_testing_demo
//
//  Created by Yi Chun Chiu on 2024/4/9.
//

import XCTest
@testable import unit_testing_demo

final class SingupWebServiceTests: XCTestCase {

    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnsSuccess() {
        // Arrange
        let sut = SignupWebServeice()
        
        let signFormRequestModel = SignupFormRequestModel(firstName: "Sergey", lastName: "Kargopolov", email: "test@test.com", password: "12345678")
        
        sut.signup(withForm: signFormRequestModel) { (signResponseMode, error) in
            
        }
    }

}
