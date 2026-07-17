//
//  CounterViewModelTests.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 9/07/26.
//

import XCTest
@testable import EasyDemo

class CounterViewModelTests: XCTestCase {
    func testInitialQuantityIsZero() {
        let viewModel = CounterViewModel()
        XCTAssertEqual(viewModel.count, 0)
    }
    
    func testIncreaseAddOneToQuantity() {
        let viewModel = CounterViewModel()
        viewModel.increment()
        XCTAssertEqual(viewModel.count, 1)
    }
    
    
    func testDecreaseSubtractOneToQuantity() {
        let viewModel = CounterViewModel()
        viewModel.increment()
        viewModel.decrement()
        XCTAssertEqual(viewModel.count, 0)
    }
    
    
    func testDecreaseDoesNotGoBelowZero() {
        let viewModel = CounterViewModel()
        viewModel.decrement()
        XCTAssertEqual(viewModel.count, 0)
    }
    
    
    func testResetSetQuantityToZero() {
        let viewModel = CounterViewModel()
        viewModel.increment()
        viewModel.increment()
        viewModel.increment()
        viewModel.reset()
        XCTAssertEqual(viewModel.count, 0)
    }
}

