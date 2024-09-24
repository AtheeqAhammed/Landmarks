//
//  MapView.swift
//  Landmarks
//
//  Created by Ateeq Ahmed on 23/09/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition: .region(region))
    }

        private var region: MKCoordinateRegion {
            MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166))
}
