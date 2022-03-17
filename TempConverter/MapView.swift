//
//  MapView.swift
//  TempConverter
//
//  Created by yoda on 16.03.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.0, longitude: 29.0),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    )
    
    @State var selectedIndex = 0
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
            .overlay(
                Picker("Picker", selection: $selectedIndex, content: {
                    Text("İstanbul").tag(0)
                    Text("London").tag(1)
                }).pickerStyle(SegmentedPickerStyle())
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
