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
            MenuItem(price: 10, title: "Burger", category: .food, ingredients: [.beef, .lettuce, .tomato, .onion, .cheese, .ketchup], emoji: "🍔"),
            MenuItem(price: 15, title: "Pizza", category: .food, ingredients: [.dough, .tomatoSauce, .mozzarella, .pepperoni, .basil], emoji: "🍕"),
            MenuItem(price: 20, title: "Sushi", category: .food, ingredients: [.rice, .salmon, .nori, .wasabi, .ginger], emoji: "🍣"),
            MenuItem(price: 12, title: "Pasta", category: .food, ingredients: [.spaghetti, .tomatoSauce, .basil, .parmesan], emoji: "🍝"),
            MenuItem(price: 7, title: "Salad", category: .food, ingredients: [.lettuce, .spinach, .carrot, .cucumber, .tomato, .dressing], emoji: "🥗"),
            MenuItem(price: 8, title: "Taco", category: .food, ingredients: [.tortilla, .beef, .lettuce, .tomato, .onion, .salsa], emoji: "🌮"),
            MenuItem(price: 18, title: "Steak", category: .food, ingredients: [.beef, .butter, .garlic, .rosemary], emoji: "🥩"),
            MenuItem(price: 12, title: "Chicken Wings", category: .food, ingredients: [.chicken, .bbqSauce], emoji: "🍗"),
            MenuItem(price: 14, title: "Lasagna", category: .food, ingredients: [.pasta, .groundBeef, .tomatoSauce, .ricotta, .mozzarella], emoji: "🍲"),
            MenuItem(price: 6, title: "Hot Dog", category: .food, ingredients: [.sausage, .bread, .mustard, .ketchup, .onion, .pickles], emoji: "🌭"),
            MenuItem(price: 10, title: "Fish & Chips", category: .food, ingredients: [.fish, .potatoes, .flour, .oil], emoji: "🐟🍟"),
            MenuItem(price: 11, title: "Vegetable Stir Fry", category: .food, ingredients: [.broccoli, .carrot, .onion, .pepper, .soySauce], emoji: "🥦🥕")
        ]

        // Inicialización de los elementos de bebida con categorías asignadas
        drinkItems = [
            MenuItem(price: 3, title: "Coffee", category: .drinks, ingredients: [.coffeeBeans, .water], emoji: "☕"),
            MenuItem(price: 2, title: "Tea", category: .drinks, ingredients: [.teaLeaves, .hotWater], emoji: "🍵"),
            MenuItem(price: 4, title: "Beer", category: .drinks, ingredients: [.water, .malt, .yeast, .hops], emoji: "🍺"),
            MenuItem(price: 6, title: "Cocktail", category: .drinks, ingredients: [.rum, .pineappleJuice, .orangeJuice, .grenadine], emoji: "🍸"),
            MenuItem(price: 5, title: "Juice", category: .drinks, ingredients: [.orangeJuice], emoji: "🧃"),
            MenuItem(price: 7, title: "Milkshake", category: .drinks, ingredients: [.milk, .iceCream, .sugar, .vanillaExtract], emoji: "🥤"),
            MenuItem(price: 3, title: "Lemonade", category: .drinks, ingredients: [.lemon, .sugar, .water], emoji: "🍋🍹"),
            MenuItem(price: 6, title: "Smoothie", category: .drinks, ingredients: [.berries, .banana, .yogurt], emoji: "🥤🍓")
        ]

        // Inicialización de los elementos de postre con categorías asignadas
        dessertItems = [
            MenuItem(price: 6, title: "Cake", category: .desserts, ingredients: [.flour, .sugar, .eggs, .butter, .bakingPowder, .milk], emoji: "🎂"),
            MenuItem(price: 4, title: "Ice Cream", category: .desserts, ingredients: [.milk, .cream, .sugar, .vanilla], emoji: "🍦"),
            MenuItem(price: 2, title: "Donut", category: .desserts, ingredients: [.flour, .sugar, .eggs, .milk, .yeast], emoji: "🍩"),
            MenuItem(price: 5, title: "Chocolate", category: .desserts, ingredients: [.cocoa, .sugar, .butter, .milk], emoji: "🍫")
        ]
    }
}
