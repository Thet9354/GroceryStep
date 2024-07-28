//
//  ShopItem.swift
//  GroceryStep
//
//  Created by Phoon Thet Pine on 28/7/24.
//

import SwiftUI

struct ShopItem: View {
    
    //MARK: PROPERTIES
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
        
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                
                Text(title)
                
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.2f", price))")
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

#Preview {
    ShopItem(imageName: "avocado", title: "Avocado", price: 4.00, color: Color.green, selfIndex: 0)
}
