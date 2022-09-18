//
//  ContentView.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import SwiftUI
import CoreData

struct ContentView: View {

    @State private var showOnBoarding = true
    var body: some View {
        if showOnBoarding{
            AppOnBoardingView(showOnBoarding: $showOnBoarding)
        }else{
            RecipeListView()
        }
            
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
