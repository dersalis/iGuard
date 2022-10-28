//
//  GuestDetailsView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct GuestDetailsView: View {
    var guest: Guest
    
    var body: some View {
        VStack {
            Text(guest.name)
                .font(.title)
            
            Spacer()
        }
    }
}

struct GuestDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        GuestDetailsView(guest: guestsData[0])
    }
}
