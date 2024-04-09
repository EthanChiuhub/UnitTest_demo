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
        
        if firstName.isEmpty {
            returnValue = false
        }
        
        return returnValue
    }
    
}
