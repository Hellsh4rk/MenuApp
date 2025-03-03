//
//  littleLemonMenuTests.swift
//  littleLemonMenuTests
//
//  Created by Yahir Lope on 16/02/25.
//

import XCTest
@testable import littleLemonMenu

class MenuItemTests: XCTestCase {

    // Caso de prueba para verificar el título del elemento de menú
    func testMenuItemTitle() {
        // Crear un elemento de menú con un título específico
        let menuItem = MenuItem(price: 10, title: "Burger", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍔")
        
        // Verificar que el título del elemento de menú es igual al valor esperado
        XCTAssertEqual(menuItem.title, "Burger", "El título del elemento de menú debe ser igual al valor inicializado.")
    }

    // Caso de prueba para verificar los ingredientes del elemento de menú
    func testMenuItemIngredients() {
        // Crear un elemento de menú con ingredientes específicos
        let menuItem = MenuItem(price: 10, title: "Burger", category: .food, ingredients: [.pasta, .tomatoSauce], emoji: "🍔")
        
        // Verificar que los ingredientes del elemento de menú son los esperados
        XCTAssertEqual(menuItem.ingredients, [.pasta, .tomatoSauce], "Los ingredientes del elemento de menú deben ser iguales a los valores inicializados.")
    }
}
