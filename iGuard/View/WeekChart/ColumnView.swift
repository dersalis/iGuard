//
//  ColumnView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct ColumnView: View {
    var name: String = "D"
    var value: CGFloat = 30
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .frame(height: isAnimating ? value : 0)
                    .cornerRadius(3)
                    .animation(.linear(duration: 1), value: isAnimating)
            }
            .frame(minWidth: 0, maxWidth: 18, minHeight: 0, maxHeight: 102, alignment: .bottom)
            .background(.gray.opacity(0.2))
            
            Text(name)
                .font(.system(size: 14))
                .padding(.top, -4)
                .padding(.bottom, -2)
        }
        .frame(alignment: .bottom)
        //.animation(.linear(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(name: "P", value: 25)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
