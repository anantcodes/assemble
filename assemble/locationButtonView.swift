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
    
    @StateObject private var viewModel = locationButtonViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
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

final class locationButtonViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40, longitude: 120), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    
}
