//
//  SignupFormModelValidator.swift
//  unit_testing_demo
//
//  Created by Yi Chun Chiu on 2024/4/9.
//

import Foundation


final class SignupFormModelValidator {
    
    public func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLenghth || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    public func doPasswordsMatch(password: String, repeatPassword: String) -> Bool { 
        return password == repeatPassword
    }
    
}
