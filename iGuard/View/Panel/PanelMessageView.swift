//
//  PanelMessageView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelMessageView: View {
    var message: String
    
    var body: some View {
        HStack {
            Text(message)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

struct PanelMessageView_Previews: PreviewProvider {
    static var previews: some View {
        PanelMessageView(message: "Wszystkie pojazdy aktualnie oczekujące na wjazd na terenie firmy.")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
