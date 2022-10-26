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
        GroupBox(
            label: Label("Oczekujące", systemImage: "timer")
        ) {
            PanelMessageView(message: "Wszystkie aktualnie oczekujące na wstęp na teren firmy.")
                .padding(.top, 1)
                
            Divider()
            
            PanelCounterView(value: data.counter, name: "pojazdy")
        }
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
