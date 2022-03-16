//
//  TempConverterApp.swift
//  TempConverter
//
//  Created by yoda on 14.03.2022.
//

import SwiftUI

@main
struct TempConverterApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem {
                        HStack {
                            Text("Conversion")
                        }
                    }
                MapView()
                    .tabItem {
                        HStack {
                            Text("Map")
                        }
                    }
            }
        }
    }
}
