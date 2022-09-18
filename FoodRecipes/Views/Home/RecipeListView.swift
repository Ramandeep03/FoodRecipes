//
//  RecipeListView.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import SwiftUI

struct RecipeListView: View {
    @State private var searchText = ""
    @State private var allRecipes = [Recipe]()
    
    var recipes: [Recipe]{
        if searchText.isEmpty{
            return allRecipes
        }
        
        return allRecipes.filter({ $0.name.lowercased().contains(searchText.lowercased())})
    }
    
    var body: some View {
        NavigationView{
            VStack{
                SearchView(serchText: $searchText)
                
                ScrollView(showsIndicators: false){
                    LazyVStack(alignment: .leading, spacing: 10 ){
                        BannerView()
                        ForEach(recipes ,id: \.self) { recipe in
                            NavigationLink(destination: RecipeDetailView(recipe: recipe)){
                                RecipeTileView(recipe: recipe)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .animation(.easeInOut, value: searchText)
            .padding(.horizontal)
            .navigationTitle("Recipes")
        }
            .onAppear{
                allRecipes = JSONFileManager.load("recipes.json")
                
            }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
