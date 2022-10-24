//
//  ContentView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    let carsPanelWithCounterData: PanelWithCounter = dashboardCarsPanelWithCounterData
    let carsPanelWithCounterAndChartData: PanelWithCounterAndChart = dashboardCarsPanelWithCounterAndChartData
    
    let guestsPanelWithCounterData: PanelWithCounter = dashboardGuestsPanelWithCounterData
    let guestsPanelWithCounterAndChartData: PanelWithCounterAndChart = dashboardGuestsPanelWithCounterAndChartData
    
    var body: some View {
        NavigationView {
            ScrollView {
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
            .navigationTitle("Tablica")
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.previewLayout(.sizeThatFits)
    }
}
