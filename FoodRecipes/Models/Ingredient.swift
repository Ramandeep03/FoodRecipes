//
//  Ingredient.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import Foundation


struct Ingredient: Hashable , Codable {
    var quantity : String
    var name: String
    var emoji: String
}
