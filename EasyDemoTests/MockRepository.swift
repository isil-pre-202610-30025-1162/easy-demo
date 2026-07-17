//
//  MockRepository.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 16/07/26.
//

@testable import EasyDemo


class MockRepository: ProductRepository {
    
    private let products: [Product]
    private let error: Error?
    
    init(products: [Product], error: Error?) {
        self.products = products
        self.error = error
    }
    
    func getProducts() async throws -> [EasyDemo.Product] {
        guard error == nil else { throw error! }
        return products
    }
    
    
    
}
