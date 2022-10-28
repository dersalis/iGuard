//
//  ContentView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            TableView()
                .tabItem {
                    Label("Tablica", systemImage: "tablecells")
                }
            
            GuestsView()
                .tabItem {
                    Label("Goście", systemImage: "person.2.fill")
                }
            
            CarsView()
                .tabItem {
                    Label("Pojazdy", systemImage: "car.2.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Ustawienia", systemImage: "wrench.adjustable.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.previewLayout(.sizeThatFits)
    }
}
