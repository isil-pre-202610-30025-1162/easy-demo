//
//  ProductListViewModelTests.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 16/07/26.
//

import XCTest
@testable import EasyDemo

@MainActor
class ProductListViewModelTests: XCTestCase {
    
    
    func testLoadProductsSuccess() async {
        let products = [
            Product(id: 1, name: "Product 1", price: 100.00),
            Product(id: 2, name: "Product 2", price: 50.00) ]
        
        let repository = MockRepository(products: products, error: nil)
        
        let viewModel = ProductListViewModel(repository: repository)
        
        await viewModel.loadProducts()
        
        XCTAssertEqual(viewModel.products, products)
        XCTAssertFalse(viewModel.isLoading)
        XCTAssertNil(viewModel.errorMessage)
    }
}
