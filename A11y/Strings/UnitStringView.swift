//
//  UnitStringView.swift
//  A11y
//
//  Created by Ashley Ng on 6/18/24.
//

import SwiftUI

struct UnitStringView: View {
    let title: String
        
    var body: some View {
        List {
            Text("unit_string_description")
            HStack {
                Text("abbreviated")
                let unit = Measurement(value: 78, unit: UnitTemperature.fahrenheit)
                let unitString = unit.formatted(.measurement(width: .abbreviated))
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("wide")
                let unit = Measurement(value: 78, unit: UnitTemperature.fahrenheit)
                let unitString = unit.formatted(.measurement(width: .wide))
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("abbreviated")
                let unit = Measurement(value: 50, unit: UnitLength.miles)
                let unitString = unit.formatted(.measurement(width: .abbreviated))
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("narrow")
                let unit = Measurement(value: 20, unit: UnitSpeed.metersPerSecond)
                let unitString = unit.formatted(.measurement(width: .narrow))
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("wide")
                let unit = Measurement(value: 45, unit: UnitSpeed.milesPerHour)
                let speedStyle = Measurement<UnitSpeed>.FormatStyle(width: .wide, usage: .asProvided)
                let unitString = unit.formatted(speedStyle)
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
            
            HStack {
                Text("narrow")
                let unit = Measurement(value: 1.6, unit: UnitLength.meters)
                let distanceStyle = Measurement<UnitLength>.FormatStyle(width: .narrow, usage: .personHeight)
                let unitString = unit.formatted(distanceStyle)
                Text(unitString)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .accessibilityElement(children: .combine)
        }
        .navigationTitle(title)
    }
}

#Preview {
    UnitStringView(title: "_Unit string view")
}
