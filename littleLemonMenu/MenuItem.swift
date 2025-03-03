//
//  MenuItem.swift
//  littleLemonMenu
//
//  Created by Yahir Lope on 16/02/25.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuCategory { get }
    var orderCount: Int { get set }
    var ingredients: [Ingredient] { get set }
    var emoji: String { get } // Nueva propiedad para el emoji
}

class MenuItem: MenuItemProtocol, Identifiable {
    var id: UUID
    var price: Double
    var title: String
    var category: MenuCategory
    var orderCount: Int
    var ingredients: [Ingredient]
    var emoji: String
    
    init(id: UUID = UUID(), price: Double, title: String, category: MenuCategory, orderCount: Int = 0, ingredients: [Ingredient], emoji: String) {
        self.id = id
        self.price = price
        self.title = title
        self.category = category
        self.orderCount = orderCount
        self.ingredients = ingredients
        self.emoji = emoji 
    }

    // Métodos getter y setter
    func getPrice() -> Double {
        return price
    }
    
    func setPrice(newPrice: Double) {
        price = newPrice
    }
    
    func getOrderCount() -> Int {
        return orderCount
    }
    
    func setOrderCount(newOrderCount: Int) {
        orderCount = newOrderCount
    }
    
    func getIngredients() -> [Ingredient] {
        return ingredients
    }
    
    func setIngredients(newIngredients: [Ingredient]) {
        ingredients = newIngredients
    }
}
