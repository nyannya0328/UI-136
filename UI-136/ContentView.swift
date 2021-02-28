//
//  ContentView.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
       
        NavigationView{
            
             Home()
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
