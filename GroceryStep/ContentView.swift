//
//  ContentView.swift
//  GroceryStep
//
//  Created by Phoon Thet Pine on 28/7/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("We deliver\n grocery at your\n doorsteps")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Text("Grocerr gives you fresh vegetables and fruits,\nOrder fresh at grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                
                Button() {
                    changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        
                        Text("Get Started")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                .frame(width: 200, height: 70)
                .foregroundStyle(.purple)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

#Preview {
    ContentView()
}
