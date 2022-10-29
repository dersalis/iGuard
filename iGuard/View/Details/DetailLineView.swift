//
//  DetailLineView.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import SwiftUI

struct DetailLineView: View {
    var title: String
    var content: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.body)
                .foregroundColor(.secondary)
            Spacer()
            Text(content)
                .font(.title3)
                .foregroundColor(.primary)
        }
    }
}

struct DetailLineView_Previews: PreviewProvider {
    static var previews: some View {
        DetailLineView(title: "Tytuł", content: "Zawartość")
    }
}
