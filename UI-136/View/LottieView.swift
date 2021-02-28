//
//  LottieView.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    var filename : String
    func makeUIView(context: UIViewRepresentableContext <LottieView>) -> UIView {
        
        let view = UIView(frame: .zero)
        let animation = Animation.named(filename)
    
        let animationView = AnimationView()
        animationView.animation = animation
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        
        
        
        ])
        
        return view
        
        
    }
    
    func updateUIView(_ uiView:UIView,context: UIViewRepresentableContext <LottieView>) {
        
    }
}


