//
//  DescriptionHeader.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 18/09/22.
//

import SwiftUI

struct DescriptionHeader: View {
    @Binding var stepsShowing: Bool
    var recipe: Recipe
    
    
    
    var body: some View {
        VStack{
            VStack{
                Text(recipe.name)
                    .font(.title2)
                Text("\(recipe.cookTime) | \(recipe.servings)")
                    .foregroundColor(.secondary)
                
                Picker("",
                selection:  $stepsShowing
                ){
                    Text("Ingredients")
                        .tag(false)
                    Text("Steps")
                        .tag(true)
                }.labelsHidden()
                    .pickerStyle(.segmented)
            }
        }
    }
}

struct DescriptionHeader_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionHeader(stepsShowing: .constant(false),recipe: Recipe.sampleData[0]
                          
        )
    }
}
