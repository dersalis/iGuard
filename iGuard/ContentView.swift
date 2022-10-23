//
//  ContentView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    let carsPanelWithCounterData: PanelWithCounterData = dashboardCarsPanelWithCounterData
    let carsPanelWithCounterAndChartData: PanelWithCounterAndChartData = dashboardCarsPanelWithCounterAndChartData
    
    let guestsPanelWithCounterData: PanelWithCounterData = dashboardGuestsPanelWithCounterData
    let guestsPanelWithCounterAndChartData: PanelWithCounterAndChartData = dashboardGuestsPanelWithCounterAndChartData
    
    var body: some View {
        VStack {
            
            // MARK: - POJAZDY
            HStack {
                Text("Pojazdy")
                    .font(.title)
                Spacer()
            }
            
            PanelWithCounterView(data: carsPanelWithCounterData)
            PanelWithCounterAndChartView(data: carsPanelWithCounterAndChartData)
                        
            // MARK: - GOŚCIE
            
            HStack {
                Text("Goście")
                    .font(.title)
                Spacer()
            }
            
            PanelWithCounterView(data: guestsPanelWithCounterData)
            PanelWithCounterAndChartView(data: guestsPanelWithCounterAndChartData)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
