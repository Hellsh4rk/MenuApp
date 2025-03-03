//
//  MenuItemDetailView.swift
//  littleLemonMenu
//
//  Created by Yahir Lope on 03/03/25.
//

import SwiftUI

struct MenuItemDetailView: View {
    let menuItem: MenuItem 
    
    var body: some View {
        VStack(spacing: 20) {
            Text(menuItem.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding(.top, 20)

            Text(menuItem.emoji)
                .font(.system(size: 120))
                .padding(.vertical, 10)

            Text("💰 Precio: $\(String(format: "%.2f", menuItem.price))")
                .font(.title2)
                .foregroundColor(.secondary)

            Text("📦 Ordenado: \(menuItem.orderCount) veces")
                .font(.headline)
                .foregroundColor(.secondary)

            VStack(alignment: .leading, spacing: 10) {
                Text("🍽️ Ingredientes:")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                ForEach(menuItem.ingredients, id: \.self) { ingredient in
                    Text("• \(ingredient.localizedName)")
                        .font(.body)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()
        }
        .padding()
        .navigationBarTitle("Detalles", displayMode: .inline)
    }
}
