//
//  PanelWithCounterAndChartView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelWithCounterAndChartView: View {
    var data: PanelWithCounterAndChart
    
    var body: some View {
        GroupBox(
            label: Label("Na terenie", systemImage: "arrowshape.right")
        ) {
            PanelMessageView(message: "Wszystkie aktualnie znajdujące się na terenie firmy.")
            .padding(.top, 1)
            
            Divider()
            
            PanelCounterView(value: data.counter, name: "pojazdy")
            .padding(.bottom, 5)
            
            
            Divider()
            
            PanelMessageView(message: "Poprzedni tydzień")
            .padding(.top, 5)
            
            // MARK: - WYKRES
            WeekChartView(data: data.chart)
            .padding(.top, 5)
        }
    }
}

struct PanelWithCounterAndChartView_Previews: PreviewProvider {
    static var data: PanelWithCounterAndChart = PanelWithCounterAndChart(
        counter: 58,
        chart: Chart(
            columns: [
                ChartColumn(id: 1, name: "P", value: 62),
                ChartColumn(id: 2, name: "W", value: 34),
                ChartColumn(id: 3, name: "Ś", value: 13),
                ChartColumn(id: 4, name: "C", value: 74),
                ChartColumn(id: 5, name: "P", value: 91),
                ChartColumn(id: 6, name: "S", value: 61),
                ChartColumn(id: 7, name: "N", value: 59),
            ]
        )
    )
    
    static var previews: some View {
        PanelWithCounterAndChartView(data: data)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
