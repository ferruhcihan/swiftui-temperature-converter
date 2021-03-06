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
                            Image(systemName: "thermometer")
                            Text("TAB_CONVERSION")
                        }
                    }
                MapView()
                    .tabItem {
                        HStack {
                            Image(systemName: "map")
                            Text("TAB_MAP")
                        }
                    }
            }
            .accentColor(.orange)
        }
    }
}
