//
//  ContentView.swift
//  TempConverter
//
//  Created by yoda on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahrenheitValue: String = ""
    
    let numberFormatter : NumberFormatter = {
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    
    }()
    
    func convertToCelcius() -> String {
        
        if let value = Double(fahrenheitValue){
            let fahrenheit = Measurement<UnitTemperature>(value: value, unit: .fahrenheit)
            let celsiusValue = fahrenheit.converted(to: .celsius)
            return numberFormatter.string(from: NSNumber(value: celsiusValue.value)) ?? "???"
        } else {
            return "???"
        }
    }
    
    var body: some View {
        VStack{
            TextField("value", text: $fahrenheitValue)
                .keyboardType(.decimalPad)
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
