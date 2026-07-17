//
//  ProductRepository.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 16/07/26.
//

protocol ProductRepository {
    func getProducts() async throws -> [Product]
}
