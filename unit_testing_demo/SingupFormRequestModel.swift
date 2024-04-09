//
//  SingupFormRequestModel.swift
//  unit_testing_demo
//
//  Created by Yi Chun Chiu on 2024/4/9.
//

import Foundation

struct SignupFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
