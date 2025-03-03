//
//  Ingredient.swift
//  littleLemonMenu
//
//  Created by Yahir Lope on 16/02/25.
//
import Foundation

enum Ingredient: CaseIterable {
    // Ingredientes comunes para comidas
    case pasta
    case tomatoSauce
    case spinach
    case carrot
    case broccoli
    case cheese
    case lettuce
    case chicken
    case beef
    case dough
    case mozzarella
    case pepperoni
    case basil
    case rice
    case salmon
    case nori
    case wasabi
    case ginger
    case groundBeef
    case ricotta
    case sausage
    case mustard
    case pickles
    case flour
    case milk
    case vanillaExtract
    case cocoa
    case sugar
    case eggs
    case cream
    case berries
    case banana
    case yogurt
    case hops
    case yeast
    case lime
    case pineappleJuice
    case orangeJuice
    case grenadine
    case hotWater
    case teaLeaves
    case coffeeBeans
    case water
    case onions
    case avocado
    case olives
    case tortilla
    case fish
    case potatoes
    case sweetPotatoes
    case limeJuice
    case agaveSyrup
    case ice
    case mint
    // Ingredientes faltantes
    case tomato
    case ketchup
    case spaghetti
    case parmesan
    case cucumber
    case dressing
    case salsa
    case butter
    case garlic
    case rosemary
    case bbqSauce
    case bread
    case oil
    case pepper
    case soySauce
    case malt
    case rum
    case iceCream
    case lemon
    case bakingPowder
    case vanilla
    case onion

    var localizedName: String {
        switch self {
        case .pasta: return "Pasta"
        case .tomatoSauce: return "Salsa de Tomate"
        case .spinach: return "Espinaca"
        case .carrot: return "Zanahoria"
        case .broccoli: return "Brócoli"
        case .cheese: return "Queso"
        case .lettuce: return "Lechuga"
        case .chicken: return "Pollo"
        case .beef: return "Carne de Res"
        case .dough: return "Masa"
        case .mozzarella: return "Queso Mozzarella"
        case .pepperoni: return "Pepperoni"
        case .basil: return "Albahaca"
        case .rice: return "Arroz"
        case .salmon: return "Salmón"
        case .nori: return "Alga Nori"
        case .wasabi: return "Wasabi"
        case .ginger: return "Jengibre"
        case .groundBeef: return "Carne Molida"
        case .ricotta: return "Queso Ricotta"
        case .sausage: return "Salchicha"
        case .mustard: return "Mostaza"
        case .pickles: return "Pepinillos"
        case .flour: return "Harina"
        case .milk: return "Leche"
        case .vanillaExtract: return "Extracto de Vainilla"
        case .cocoa: return "Cacao"
        case .sugar: return "Azúcar"
        case .eggs: return "Huevos"
        case .cream: return "Crema"
        case .berries: return "Frutos Rojos"
        case .banana: return "Plátano"
        case .yogurt: return "Yogur"
        case .hops: return "Lúpulo"
        case .yeast: return "Levadura"
        case .lime: return "Limón"
        case .pineappleJuice: return "Jugo de Piña"
        case .orangeJuice: return "Jugo de Naranja"
        case .grenadine: return "Jarabe de Granadina"
        case .hotWater: return "Agua Caliente"
        case .teaLeaves: return "Hojas de Té"
        case .coffeeBeans: return "Granos de Café"
        case .water: return "Agua"
        case .onions: return "Cebolla"
        case .avocado: return "Aguacate"
        case .olives: return "Aceitunas"
        case .tortilla: return "Tortilla"
        case .fish: return "Pescado"
        case .potatoes: return "Papas"
        case .sweetPotatoes: return "Batatas"
        case .limeJuice: return "Jugo de Limón"
        case .agaveSyrup: return "Jarabe de Agave"
        case .ice: return "Hielo"
        case .mint: return "Menta"
        // Ingredientes faltantes
        case .tomato: return "Tomate"
        case .ketchup: return "Ketchup"
        case .spaghetti: return "Espaguetis"
        case .parmesan: return "Queso Parmesano"
        case .cucumber: return "Pepino"
        case .dressing: return "Aderezo"
        case .salsa: return "Salsa"
        case .butter: return "Mantequilla"
        case .garlic: return "Ajo"
        case .rosemary: return "Romero"
        case .bbqSauce: return "Salsa BBQ"
        case .bread: return "Pan"
        case .oil: return "Aceite"
        case .pepper: return "Pimienta"
        case .soySauce: return "Salsa de Soja"
        case .malt: return "Malta"
        case .rum: return "Ron"
        case .iceCream: return "Helado"
        case .lemon: return "Limón"
        case .bakingPowder: return "Polvo de Hornear"
        case .vanilla: return "Vainilla"
        case .onion: return "Cebolla"
        }
    }
}
