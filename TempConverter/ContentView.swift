//
//  ContentView.swift
//  TempConverter
//
//  Created by yoda on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahrenheitValue: String = ""
    
    func convertToCelcius() -> String {
        
        if let value = Double(fahrenheitValue){
            let fahrenheit = Measurement<UnitTemperature>(value: value, unit: .fahrenheit)
            let celsiusValue = fahrenheit.converted(to: .celsius)
            return "\(celsiusValue.value)"
        } else {
            return "???"
        }
    }
    
    var body: some View {
        VStack{
            TextField("value", text: $fahrenheitValue)
                .font(Font.system(size: 64))
                .multilineTextAlignment(.center)
            Text("fahrenheit")
            Text("is actually").foregroundColor(.gray)
            Text(convertToCelcius())
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
