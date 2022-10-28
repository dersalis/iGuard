//
//  GuestsView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct GuestsView: View {
    private var guests: [Guest] = guestsData
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                ForEach(guests) { guest in
                    NavigationLink(destination: GuestDetailsView(guest: guest)) {
                        GuestListItemView(guest: guest)
                    }
                }
                
            }
            .navigationTitle("Goście")
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct GuestsView_Previews: PreviewProvider {
    static var previews: some View {
        GuestsView()
    }
}
