//
//  ProductListViewModel.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 16/07/26.
//

import Combine

class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    private let repository: ProductRepository
    
    init(repository: ProductRepository) {
        self.repository = repository
    }
    
    func loadProducts() async {
        isLoading = true
        errorMessage = nil
        
        do {
            products = try await repository.getProducts()
        } catch {
            errorMessage = "Could not load products. Try again later."
        }
        isLoading = false
    }
}
