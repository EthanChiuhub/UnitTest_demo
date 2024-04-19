//
//  SignupFormModelValidator.swift
//  unit_testing_demoTests
//
//  Created by Yi Chun Chiu on 2024/4/9.
//

import XCTest
@testable import unit_testing_demo

final class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!
    
    override func setUp() {
        sut = SignupFormModelValidator()
    }

    override func tearDown() {
        sut = nil
    }
    
    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Sergey")
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is shorter than 2 characters but it has returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShoulddReturnFasle() {
        let isFirstNameValid = sut.isFirstNameValid(firstName: "SergeySergey")
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is longer than 9 characters but it has returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenEqualPassworddsProvide_ShoulddReturnTrue() {
        let doPasswordsMath = sut.doPasswordsMatch(password: "12345678", repeatPassword: "12345678")
        XCTAssertTrue(doPasswordsMath, "The doPasswordsMatch() should have returned TRUE for equal passwords but it has returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenNoEqualPassworddsProvide_ShoulddReturnFalse() {
        let doPasswordsMath = sut.doPasswordsMatch(password: "12345678", repeatPassword: "123456")
        XCTAssertFalse(doPasswordsMath, "The doPasswordsMatch() should have returned Flase for no equal passwords but it has returned TRUE")
    }

}
