//
//  LoginViewModelTests.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 9/07/26.
//

import XCTest
@testable import EasyDemo

class LoginViewModelTests: XCTestCase {
    
    
    func testEmptyEmaiIsInvalid() {
        let viewModel = LoginViewModel()
        viewModel.email = ""
        viewModel.password = "123456"
        
        let result = viewModel.validate()
        
        XCTAssertFalse(result)
        XCTAssertEqual(viewModel.errorMessage, "Email is required" )
    }
    
    
    func testEmptyPasswordIsInvalid() {
        let viewModel = LoginViewModel()
        viewModel.email = "jmaytag@isi.pe"
        viewModel.password = ""
        
        let result = viewModel.validate()
        
        XCTAssertFalse(result)
        XCTAssertEqual(viewModel.errorMessage, "Password is required" )
    }
    
    
    func testShortPasswordIsInvalid() {
        let viewModel = LoginViewModel()
        viewModel.email = "jmaytag@isi.pe"
        viewModel.password = "12345"
        
        let result = viewModel.validate()
        
        XCTAssertFalse(result)
        XCTAssertEqual(viewModel.errorMessage, "Password must be at least 6 characters" )
    }
    
    func testValidForReturnsTrue() {
        let viewModel = LoginViewModel()
        viewModel.email = "jmaytag@isi.pe"
        viewModel.password = "123456"
        
        let result = viewModel.validate()
        
        XCTAssertTrue(result)
        XCTAssertNil(viewModel.errorMessage)
    }
}
