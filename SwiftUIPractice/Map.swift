//
//  Map.swift
//  SwiftUIPractice
//
//  Created by Tsering Lama on 1/7/20.
//  Copyright © 2020 Tsering Lama. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable { // for MapViewType
  
  // creates a MKMapView
  func makeUIView(context: Context) -> MKMapView {
    // method that creates and returns an empty MKMapView
        MKMapView(frame: .zero)
    }

 // updates changes to the view
    func updateUIView(_ view: MKMapView, context: Context) {
        // method that sets the map view’s region to the correct coordinates to center the map
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
