//
//  DashboardData.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import Foundation

let dashboardCarsPanelWithCounterData: PanelWithCounterData = PanelWithCounterData(counter: 31)
let dashboardCarsPanelWithCounterAndChartData: PanelWithCounterAndChartData = PanelWithCounterAndChartData(
    counter: 58,
    chart: ChartData(
        columns: [
            ChartColumnData(id: 1, name: "P", value: 32),
            ChartColumnData(id: 2, name: "W", value: 34),
            ChartColumnData(id: 3, name: "Ś", value: 13),
            ChartColumnData(id: 4, name: "C", value: 74),
            ChartColumnData(id: 5, name: "P", value: 91),
            ChartColumnData(id: 6, name: "S", value: 61),
            ChartColumnData(id: 7, name: "N", value: 59),
        ]
    )
)

let dashboardGuestsPanelWithCounterData: PanelWithCounterData = PanelWithCounterData(counter: 12)
let dashboardGuestsPanelWithCounterAndChartData: PanelWithCounterAndChartData = PanelWithCounterAndChartData(
    counter: 18,
    chart: ChartData(
        columns: [
            ChartColumnData(id: 1, name: "P", value: 24),
            ChartColumnData(id: 2, name: "W", value: 3),
            ChartColumnData(id: 3, name: "Ś", value: 53),
            ChartColumnData(id: 4, name: "C", value: 31),
            ChartColumnData(id: 5, name: "P", value: 29),
            ChartColumnData(id: 6, name: "S", value: 46),
            ChartColumnData(id: 7, name: "N", value: 59),
        ]
    )
)
