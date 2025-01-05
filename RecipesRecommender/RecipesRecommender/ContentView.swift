//
//  ContentView.swift
//  RecipesRecommender
//
//  Created by Avi Tsadok on 03/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var receipesHandler = RecipesHandler.shared
    
    @State private var suggestedRecipe: Recipe?
    
    var filteredRecipes: [Recipe] {
        if searchText.isEmpty {
            return receipesHandler.recipes
        } else {
            return receipesHandler.recipes.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if suggestedRecipe != nil {
                    Text("Suggested recipe: \(suggestedRecipe!.name)")
                }
                List(filteredRecipes) { recipe in
                    VStack(alignment: .leading) {
                        Text(recipe.name)
                            .font(.headline)
                        Text(recipe.instructions)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .listStyle(PlainListStyle())
                .searchable(text: $searchText, prompt: "Search Recipes")
            }
            .onAppear(perform: {
                updateReciptSuggestion()
            })
            .navigationTitle("Recipes")
        }
    }
    
    private func updateReciptSuggestion() {
        do {
            let predicator = try RecipePredictor()
            let reciptID = try predicator.getUUID(forDayInWeek: 1, hourInDay: 8)
            suggestedRecipe = RecipesHandler.shared.getReceipt(BytID: reciptID)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

#Preview {
    ContentView()
}
