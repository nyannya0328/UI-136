//
//  MapView.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
    func makeUIView(context: Context) -> MKMapView {
        let view = MKMapView()
        return view
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
}

