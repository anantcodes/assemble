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
        ZStack(alignment: .bottom) {
            Map(coordinateRegion: $region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.pink)
            
            LocationButton(.currentLocation) {
                print("")
            }
            .foregroundColor(.white)
            .cornerRadius(8)
            .labelStyle(.titleAndIcon)
            .symbolVariant(.fill)
            .tint(.pink)
            .padding(.bottom, 50)
        }
    }
}

struct locationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        locationButtonView()
    }
}
