//
//  DashboardData.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import Foundation

let dashboardCarsPanelWithCounterData: PanelWithCounter = PanelWithCounter(counter: 31)
let dashboardCarsPanelWithCounterAndChartData: PanelWithCounterAndChart = PanelWithCounterAndChart(
    counter: 58,
    chart: Chart(
        columns: [
            ChartColumn(id: 1, name: "P", value: 32),
            ChartColumn(id: 2, name: "W", value: 34),
            ChartColumn(id: 3, name: "Ś", value: 13),
            ChartColumn(id: 4, name: "C", value: 74),
            ChartColumn(id: 5, name: "P", value: 91),
            ChartColumn(id: 6, name: "S", value: 61),
            ChartColumn(id: 7, name: "N", value: 59),
        ]
    )
)

let dashboardGuestsPanelWithCounterData: PanelWithCounter = PanelWithCounter(counter: 12)
let dashboardGuestsPanelWithCounterAndChartData: PanelWithCounterAndChart = PanelWithCounterAndChart(
    counter: 18,
    chart: Chart(
        columns: [
            ChartColumn(id: 1, name: "P", value: 24),
            ChartColumn(id: 2, name: "W", value: 3),
            ChartColumn(id: 3, name: "Ś", value: 53),
            ChartColumn(id: 4, name: "C", value: 31),
            ChartColumn(id: 5, name: "P", value: 29),
            ChartColumn(id: 6, name: "S", value: 46),
            ChartColumn(id: 7, name: "N", value: 59),
        ]
    )
)
