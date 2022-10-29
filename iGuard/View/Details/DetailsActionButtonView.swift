//
//  DetailsActionButtonView.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import SwiftUI

struct DetailsActionButtonView: View {
    var message: String
    
    var body: some View {
        Text(message.uppercased())
            .fontWeight(.bold)
            .foregroundColor(.red)
            .padding(.horizontal, 100)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.red, lineWidth: 1.5))
    }
}

struct DetailsActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsActionButtonView(message: "Klik")
    }
}
