//
//  ContentView.swift
//  EasyDemo
//
//  Created by Jorge Mayta on 9/07/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Quantity")
                .font(.title)
            
            Text("\(viewModel.count)")
                .font(.largeTitle)
                .bold()
                .accessibilityIdentifier("countText")
            
            
            HStack {
                Button {
                    viewModel.decrement()
                } label: {
                   Text("Dicrease")
                }
                .accessibilityIdentifier("decreaseButton")

                Button {
                    viewModel.increment()
                } label: {
                   Text("Increase")
                }
                .accessibilityIdentifier("increaseButton")
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
