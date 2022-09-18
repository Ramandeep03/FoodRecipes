//
//  AppOnBoarding.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import Foundation


struct AppOnBoarding: Identifiable{
    let id = UUID().uuidString
    var title: String
    var detail: String
    var animationName: String
}

extension AppOnBoarding{
    static var data: [AppOnBoarding]{
        [
            AppOnBoarding(title: "Welcome to Food Recipes!", detail: "Search, cook and enjoy freshly made food at your home. Find step by step recipes with Food recipes App.", animationName: "onboarding1"),
            AppOnBoarding(title: "Pick fresh ingredients!", detail: "Best tasting food comes from frsh ingredients. Find list of ingredients with Food Recipes App.", animationName: "onboarding2"),
            AppOnBoarding(title: "Cook to perfection!", detail: "Deliciois food takes it's own time to get ready. Find steps to cook your food to the perfection.", animationName: "onboarding3"),
            AppOnBoarding(title: "Enjoy your homemade meal!", detail: "Enjoy your home cooked food wiht your friends and family.", animationName: "onboarding4")
        ]
    }
}
