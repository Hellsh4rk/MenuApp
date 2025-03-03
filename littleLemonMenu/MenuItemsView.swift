//
//  MenuItemsView.swift
//  littleLemonMenu
//
//  Created by Yahir Lope on 16/02/25.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var viewModel: MenuViewViewModel
    @State private var selectedSortOption = "Más populares"
    @State private var selectedCategories = Set([MenuCategory.food, MenuCategory.drinks, MenuCategory.desserts])

    // Función para ordenar los elementos según la opción seleccionada
    func sortedItems(_ category: [MenuItem]) -> [MenuItem] {
        switch selectedSortOption {
        case "Más populares":
            return category.sorted { $0.orderCount > $1.orderCount }
        case "Precio $-$$$":
            return category.sorted { $0.price < $1.price }
        case "A-Z":
            return category.sorted { $0.title < $1.title }
        default:
            return category
        }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Menu")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black)
                        .padding()

                    Text("Ordenar por")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.top)

                    Picker("Ordenar por", selection: $selectedSortOption) {
                        Text("Más populares").tag("Más populares")
                        Text("Precio $-$$$").tag("Precio $-$$$")
                        Text("A-Z").tag("A-Z")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.top)

                    Text("Categorías")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.top)

                    HStack(spacing: 15) {
                        categoryButton(title: "Comida", category: .food, color: Color.blue.opacity(0.5))
                        categoryButton(title: "Bebida", category: .drinks, color: Color.green.opacity(0.5))
                        categoryButton(title: "Postre", category: .desserts, color: Color.pink.opacity(0.5))
                    }
                    .padding(.top)

                    if selectedCategories.contains(.food) {
                        sectionView(title: "Comida", items: sortedItems(viewModel.foodItems), color: Color.blue)
                    }

                    if selectedCategories.contains(.drinks) {
                        sectionView(title: "Bebidas", items: sortedItems(viewModel.drinkItems), color: Color.green)
                    }

                    if selectedCategories.contains(.desserts) {
                        sectionView(title: "Postres", items: sortedItems(viewModel.dessertItems), color: Color.pink)
                    }
                }
                .padding()
            }
            .navigationTitle("Menú")
        }
    }

    // Botón para las categorías seleccionadas
    private func categoryButton(title: String, category: MenuCategory, color: Color) -> some View {
        Button(action: {
            if selectedCategories.contains(category) {
                selectedCategories.remove(category)
            } else {
                selectedCategories.insert(category)
            }
        }) {
            Text(title)
                .padding()
                .background(selectedCategories.contains(category) ? color : Color.gray.opacity(0.3))
                .foregroundColor(selectedCategories.contains(category) ? .white : .black)
                .cornerRadius(10)
                .font(.headline)
        }
        .padding(.horizontal, 5)
    }

    // Vista para cada sección de categorías
    private func sectionView(title: String, items: [MenuItem], color: Color) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .foregroundColor(.black)
                .padding(.top)

            LazyVGrid(columns: [
                GridItem(.flexible(), spacing: 15),
                GridItem(.flexible(), spacing: 15),
                GridItem(.flexible(), spacing: 15)
            ], spacing: 15) {
                ForEach(items, id: \.id) { item in
                    NavigationLink(destination: MenuItemDetailView(menuItem: item)) {
                        VStack {
                            Text(item.emoji) // Emoji como imagen
                                .font(.system(size: 50))
                                .frame(maxWidth: .infinity)

                            Text(item.title) 
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                        }
                        .frame(height: 150)
                        .background(color.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.bottom, 10)
                    }
                }
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuItemsView(viewModel: MenuViewViewModel())
        }
    }
}
