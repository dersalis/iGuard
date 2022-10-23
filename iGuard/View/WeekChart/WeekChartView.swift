//
//  WeekChartView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct WeekChartView: View {
    var data: ChartData
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 18) {
                ForEach (0..<7) { index in
                    WeekChartColumnView(data: data.columns[index])
                }
                
                Spacer()
            }
        }
        .frame(height: 120)
        .overlay{
            WeekChartAverageLineView(averageValue: data.avarage)
        }
    }
}

struct WeekChartView_Previews: PreviewProvider {
    static var data: ChartData = ChartData(
        columns: [
            ChartColumnData(id: 1, name: "P", value: 32),
            ChartColumnData(id: 2, name: "W", value: 58),
            ChartColumnData(id: 3, name: "Ś", value: 13),
            ChartColumnData(id: 4, name: "C", value: 74),
            ChartColumnData(id: 5, name: "P", value: 91),
            ChartColumnData(id: 6, name: "S", value: 61),
            ChartColumnData(id: 7, name: "N", value: 59),
        ]
    )
    
    static var previews: some View {
        WeekChartView(data: data)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
