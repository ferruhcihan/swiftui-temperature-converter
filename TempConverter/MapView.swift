//
//  MapView.swift
//  TempConverter
//
//  Created by yoda on 16.03.2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    static var regions: [MKCoordinateRegion] = [
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 41.0, longitude: 29.0),
            span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        ),
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.5098, longitude: -0.1180),
            span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        )
    ]
    
    @State var region: MKCoordinateRegion = regions[0]
    
    @State var selectedIndex = 0
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.top)
            .overlay(
                VStack {
                    Picker("Picker", selection: $selectedIndex, content: {
                        Text("İstanbul").tag(0)
                        Text("London").tag(1)
                    }).pickerStyle(SegmentedPickerStyle())
                        .padding()
                        .onChange(of: selectedIndex, perform: { value in self.region = MapView.regions[selectedIndex]
                        })
                    Spacer()
                }
            )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
