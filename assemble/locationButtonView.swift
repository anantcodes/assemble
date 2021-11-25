//
//  locationButtonView.swift
//  assemble
//
//  Created by Anant Kanchan on 25/11/21.
//

import CoreLocationUI
import MapKit
import SwiftUI

struct locationButtonView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40, longitude: 120), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.pink)
        }
    }
}

struct locationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        locationButtonView()
    }
}
