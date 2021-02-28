//
//  LottieMain.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI

struct LottieMain: View {
    @State var show = false
    var body: some View {
        ZStack{
            LottieCard(title: "Swift UI", icon: "face.smiling.fill", animate: "electric_car", color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), color2: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                .offset(y:240)
                .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0))
                
            
            LottieCard(title: "Swift UI", icon: "face.smiling.fill", animate: "sending-email", color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), color2: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
            
            
            LottieCard(title: "Swift UI", icon: "face.smiling.fill", animate: "sending-email", color1: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), color2: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)))
                .offset(x :show ? -50 : 0)
               .offset(y:-240)
                .animation(.spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0))
                .rotationEffect(Angle(degrees: show ? 15 : 0))
                .onTapGesture {
                    show.toggle()
                }
        }
    }
}

struct LottieMain_Previews: PreviewProvider {
    static var previews: some View {
        LottieMain()
    }
}
