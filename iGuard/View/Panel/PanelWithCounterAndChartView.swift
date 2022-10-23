//
//  PanelWithCounterAndChartView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelWithCounterAndChartView: View {
    var data: PanelWithCounterAndChartData
    
    var body: some View {
        VStack {
            PanelTitleView(title: "Na terenie", image: "arrowshape.right")
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 1)
            
            PanelMessageView(message: "Wszystkie aktualnie znajdujące się na terenie firmy.")
            .padding(.horizontal, 20)
            
            Divider()
            
            PanelCounterView(value: data.counter, name: "pojazdy")
            .padding(.horizontal, 20)
            .padding(.bottom, 5)
            
            
            Divider()
            
            PanelMessageView(message: "Poprzedni tydzień")
            .padding(.horizontal, 20)
            
            // MARK: - WYKRES
            WeekChartView(data: data.chart)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.secondary.opacity(0.35))
        .cornerRadius(10)
    }
}

struct PanelWithCounterAndChartView_Previews: PreviewProvider {
    static var data: PanelWithCounterAndChartData = PanelWithCounterAndChartData(
        counter: 58,
        chart: ChartData(
            columns: [
                ChartColumnData(id: 1, name: "P", value: 62),
                ChartColumnData(id: 2, name: "W", value: 34),
                ChartColumnData(id: 3, name: "Ś", value: 13),
                ChartColumnData(id: 4, name: "C", value: 74),
                ChartColumnData(id: 5, name: "P", value: 91),
                ChartColumnData(id: 6, name: "S", value: 61),
                ChartColumnData(id: 7, name: "N", value: 59),
            ]
        )
    )
    
    static var previews: some View {
        PanelWithCounterAndChartView(data: data)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
