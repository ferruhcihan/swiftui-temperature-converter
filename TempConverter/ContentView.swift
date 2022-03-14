//
//  ContentView.swift
//  TempConverter
//
//  Created by yoda on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("212").font(Font.system(size: 64))
            Text("fahrenheit")
            Text("is actually")
            Text("100").font(Font.system(size: 64))
            Text("degrees Celcius")
            Spacer()
        }.foregroundColor(.orange).font(.title)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
