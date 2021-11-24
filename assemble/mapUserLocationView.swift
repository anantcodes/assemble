//
//  mapUserLocationView.swift
//  assemble
//
//  Created by Anant Kanchan on 24/11/21.
//

import MapKit
import SwiftUI

struct mapUserLocationView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 26.856447, longitude: 80.945655), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea()
    }
}

struct mapUserLocationView_Previews: PreviewProvider {
    static var previews: some View {
        mapUserLocationView()
    }
}
