//
//  TableView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct TableView: View {
    let carsPanelWithCounterData: PanelWithCounter = dashboardCarsPanelWithCounterData
    let carsPanelWithCounterAndChartData: PanelWithCounterAndChart = dashboardCarsPanelWithCounterAndChartData
    
    let guestsPanelWithCounterData: PanelWithCounter = dashboardGuestsPanelWithCounterData
    let guestsPanelWithCounterAndChartData: PanelWithCounterAndChart = dashboardGuestsPanelWithCounterAndChartData
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
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

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
