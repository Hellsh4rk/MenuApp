//
//  MenuViewModel.swift
//  littleLemonMenu
//
//  Created by Yahir Lope on 16/02/25.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published var foodItems: [MenuItem] = []
    @Published var drinkItems: [MenuItem] = []
    @Published var dessertItems: [MenuItem] = []

    init() {
        // Inicialización de los elementos de comida con categorías asignadas
        foodItems = [
            MenuItem(price: 10, title: "Burger", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍔"),
            MenuItem(price: 15, title: "Pizza", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍕"),
            MenuItem(price: 20, title: "Sushi", category: .food, ingredients: [.spinach, .carrot], emoji: "🍣"),
            MenuItem(price: 12, title: "Pasta", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍝"),
            MenuItem(price: 7, title: "Salad", category: .food, ingredients: [.spinach, .broccoli], emoji: "🥗"),
            MenuItem(price: 8, title: "Taco", category: .food, ingredients: [.tomatoSauce, .carrot], emoji: "🌮"),
            MenuItem(price: 18, title: "Steak", category: .food, ingredients: [.broccoli, .carrot], emoji: "🥩"),
            MenuItem(price: 12, title: "Chicken Wings", category: .food, ingredients: [.spinach, .tomatoSauce], emoji: "🍗"),
            MenuItem(price: 14, title: "Lasagna", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍲"),
            MenuItem(price: 6, title: "Hot Dog", category: .food, ingredients: [.spinach], emoji: "🌭"),
            MenuItem(price: 10, title: "Fish & Chips", category: .food, ingredients: [.carrot, .tomatoSauce], emoji: "🍟🐟"),
            MenuItem(price: 11, title: "Vegetable Stir Fry", category: .food, ingredients: [.broccoli, .spinach], emoji: "🥦🥕")
        ]

        // Inicialización de los elementos de bebida con categorías asignadas
        drinkItems = [
            MenuItem(price: 3, title: "Coffee", category: .drinks, ingredients: [.pasta], emoji: "☕"),
            MenuItem(price: 2, title: "Tea", category: .drinks, ingredients: [.carrot], emoji: "🍵"),
            MenuItem(price: 4, title: "Beer", category: .drinks, ingredients: [.tomatoSauce], emoji: "🍺"),
            MenuItem(price: 6, title: "Cocktail", category: .drinks, ingredients: [.spinach], emoji: "🍸"),
            MenuItem(price: 5, title: "Juice", category: .drinks, ingredients: [.broccoli], emoji: "🧃"),
            MenuItem(price: 7, title: "Milkshake", category: .drinks, ingredients: [.carrot], emoji: "🥤"),
            MenuItem(price: 3, title: "Lemonade", category: .drinks, ingredients: [.spinach], emoji: "🍋🍹"),
            MenuItem(price: 6, title: "Smoothie", category: .drinks, ingredients: [.broccoli], emoji: "🥤🍓")
        ]

        // Inicialización de los elementos de postre con categorías asignadas
        dessertItems = [
            MenuItem(price: 6, title: "Cake", category: .desserts, ingredients: [.tomatoSauce], emoji: "🎂"),
            MenuItem(price: 4, title: "Ice Cream", category: .desserts, ingredients: [.pasta], emoji: "🍦"),
            MenuItem(price: 2, title: "Donut", category: .desserts, ingredients: [.spinach], emoji: "🍩"),
            MenuItem(price: 5, title: "Chocolate", category: .desserts, ingredients: [.carrot], emoji: "🍫")
        ]
    }
}
