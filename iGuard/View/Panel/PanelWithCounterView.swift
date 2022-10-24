//
//  PanelWithCounterView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelWithCounterView: View {
    var data: PanelWithCounter
    
    var body: some View {
        VStack {
            PanelTitleView(title: "Oczekujące", image: "timer")
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 1)
            
            PanelMessageView(message: "Wszystkie aktualnie oczekujące na wstęp na terenie firmy.")
            .padding(.horizontal, 20)
            
            Divider()
            
            PanelCounterView(value: data.counter, name: "pojazdy")
            .padding(.horizontal, 20)
            .padding(.bottom, 15)
        }
        .frame(maxWidth: .infinity)
        .background(.secondary.opacity(0.35))
        .cornerRadius(10)
    }
}

struct PanelWithCounterView_Previews: PreviewProvider {
    static let panelData: PanelWithCounter = PanelWithCounter(counter: 29)
    
    static var previews: some View {
        PanelWithCounterView(data: panelData)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
