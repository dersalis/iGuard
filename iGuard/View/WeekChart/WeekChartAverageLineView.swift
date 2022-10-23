//
//  WeekChartAverageLineView.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import SwiftUI

struct WeekChartAverageLineView: View {
    var averageValue: CGFloat = 0
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.gray)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1, maxHeight: 3)
                .cornerRadius(2)
                .offset(y: 56 - (isAnimating ? averageValue : 0))
                .animation(.linear(duration: 1), value: isAnimating)
            
            HStack {
                Spacer()
                Text("średnia")
                    .font(.system(size: 12))
                    .opacity(0.5)
                    .padding(.top, 2)
                    .padding(.trailing, -3)
                
                Text("\(Int(averageValue))")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .padding(.top, 4)
            }
            .offset(y: 45 - (isAnimating ? averageValue : 0))
            .animation(.linear(duration: 1), value: isAnimating)
        }
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct WeekChartAverageLineView_Previews: PreviewProvider {
    static var previews: some View {
        WeekChartAverageLineView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
