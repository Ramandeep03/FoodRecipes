//
//  AppOnBoardingView.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import SwiftUI

struct AppOnBoardingView: View {
    @Binding var showOnBoarding: Bool
    
    var steps = AppOnBoarding.data
    
    @State private var selection = 0
    
    
    var body: some View {
        VStack{
            TabView(
                selection: $selection){
                    ForEach(0..<steps.count , id: \.self) { step in
                        VStack(spacing: 0){
                            Spacer()
                            Text(steps[step].title)
                                .font(.largeTitle)
                            Rectangle()
                                .fill(Color.secondary.opacity(0.2))
                                .frame(height: 1)
                            VStack(alignment: .leading){
                                LottieView(name: steps[step].animationName)
                                    .scaledToFit()
                                
                                Text(steps[step].detail)
                            }.padding()
                            Spacer()
                        }
                        .tag(step)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            HStack{
                Spacer()
                Button{
                    withAnimation{
                        if selection < steps.count - 1 {
                            selection += 1
                        }else{
                            showOnBoarding.toggle()
                        }
                    }
                    
                } label: {
                    if selection == steps.count - 1 {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    }else{
                        Image(systemName: "chevron.right.circle")
                            .font(.largeTitle)
                    }
                }
            }
            .padding()
            .foregroundColor(.primary)
        }
    }
}

struct AppOnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        AppOnBoardingView(showOnBoarding: .constant(true))
    }
}
