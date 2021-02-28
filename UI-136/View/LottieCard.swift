//
//  LottieCard.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI


struct LottieCard: View {
    var title :String
    var icon : String
    var animate : String
    var color1 : Color
    var color2 : Color
    var body: some View {
        
        ZStack{
            
        
               
   
            
            RoundedRectangle(cornerRadius: 30)
                .fill(LinearGradient(gradient: .init(colors: [.red,.green]), startPoint: .bottom, endPoint: .top))
                .frame(width: 400, height: 250)
                .shadow(color: Color.black.opacity(0.3), radius: 25, x: -10, y: 10)
            
            ZStack{
                
                Circle()
                    .fill(Color.blue.opacity(0.3))
                    .frame(width: 25)
                
                Image(systemName: icon)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.white)
                
            }
            .offset(x: 155, y: -80)
            
            
            Text(title)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .offset(x: -130, y: -80)
            
            LottieView(filename: animate)
                .frame(width: 250, height: 250)
            
            
            
        }
      
    
    }
}

