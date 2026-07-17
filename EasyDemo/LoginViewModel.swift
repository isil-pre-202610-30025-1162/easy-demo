//
//  LoginViewModel.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 9/07/26.
//

import Combine


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published private(set) var errorMessage: String?
    
    var isFormValid: Bool {
        !email.isEmpty && password.count >= 6
    }
    
    func validate() -> Bool {
        if email.isEmpty {
            errorMessage = "Email is required"
            return false
        }
        if !email.contains("@") {
            errorMessage = "Invalid email"
            return false
        }
        if password.isEmpty {
            errorMessage = "Password is required"
            return false
        }
        
        if password.count < 6 {
            errorMessage = "Password must be at least 6 characters"
            return false
        }
        errorMessage = nil
        return true
    }

    
}
