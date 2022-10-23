//
//  PanelTitleView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct PanelTitleView: View {
    var title: String
    var image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .font(.system(size: 18))
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.bold)
            Spacer()
        }
    }
}

struct PanelTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PanelTitleView(title: "Oczekujące", image: "timer")
            .previewLayout(.sizeThatFits)
            .padding()
        
        PanelTitleView(title: "Na terenie", image: "arrowshape.right")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
