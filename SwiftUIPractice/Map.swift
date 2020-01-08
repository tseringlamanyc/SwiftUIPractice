//
//  Map.swift
//  SwiftUIPractice
//
//  Created by Tsering Lama on 1/7/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
  func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 27.7214, longitude: 85.3620)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(
        latitude: 27.7214, longitude: 85.3620)
        annotation.title = "Bouddha Stupa"
        view.addAnnotation(annotation)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
