//
//  MapView.swift
//  swiftUIDemo
//
//  Created by 陈淑洋 on 2020/3/5.
//  Copyright © 2020 chensy. All rights reserved.
//

import SwiftUI
import MapKit
struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    var coordinate : CLLocationCoordinate2D
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
