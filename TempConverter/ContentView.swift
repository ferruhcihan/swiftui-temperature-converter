//
//  ContentView.swift
//  TempConverter
//
//  Created by yoda on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahrenheitValue: String = "212"
    
    var body: some View {
        VStack{
            TextField("value", text: $fahrenheitValue)
                .font(Font.system(size: 64))
                .multilineTextAlignment(.center)
            Text("fahrenheit")
            Text("is actually").foregroundColor(.gray)
            Text(self.fahrenheitValue).font(Font.system(size: 64))
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
