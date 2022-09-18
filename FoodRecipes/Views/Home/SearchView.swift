//
//  SearchView.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import SwiftUI

struct SearchView: View {
    @Binding var serchText: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search Recipes", text: $serchText)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth:2))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(serchText: .constant(""))
    }
}
