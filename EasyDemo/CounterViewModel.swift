//
//  CounterViewModel.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 9/07/26.
//

import Combine

class CounterViewModel: ObservableObject {
    
    @Published private(set) var count = 0
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        if count > 0 {
            count -= 1
        }
    }
    
    func reset() {
        count = 0
    }
    
}
