//
//  LottieView.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable{
    
    typealias UIViewType = UIView
    
    var name = ""
    var loopMode: LottieLoopMode = .loop
    
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = AnimationView()
        let animation = Animation.named(name)
        animationView.animation = animation
        animationView.contentMode = .scaleToFill
        animationView.loopMode = loopMode
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
        
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
    
  
    
}
