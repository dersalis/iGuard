//
//  PanelCounterView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelCounterView: View {
    var value: Int = 0
    var name: String
    
    var body: some View {
        HStack {
            Text("\(value)")
                .font(.system(size: 30))
                .fontWeight(.bold)
            Text(name)
                .font(.system(size: 14))
                .opacity(0.5)
                .padding(.leading, -5)
                .padding(.bottom, -8)
            Spacer()
        }
    }
}

struct PanelCounterView_Previews: PreviewProvider {
    static var previews: some View {
        PanelCounterView(value: 35, name: "pojazdy")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
