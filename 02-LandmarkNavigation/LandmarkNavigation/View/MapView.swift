//
//  MapView.swift
//  Landmarks
//
//  Created by 蔡浩铭 on 2020/11/2.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Self.Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Self.Context){
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
