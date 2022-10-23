//
//  ColumnView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct WeekChartColumnView: View {
    var data: ChartColumnData
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .frame(height: isAnimating ? data.value : 0)
                    .cornerRadius(3)
                    .animation(.linear(duration: 1), value: isAnimating)
            }
            .frame(minWidth: 0, maxWidth: 20, minHeight: 0, maxHeight: 102, alignment: .bottom)
            .background(.gray.opacity(0.2))
            
            Text(data.name)
                .font(.system(size: 14))
                .padding(.top, -4)
                .padding(.bottom, -2)
        }
        .frame(alignment: .bottom)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var data: ChartColumnData = ChartColumnData(id: 1, name: "S", value: 45)
    
    static var previews: some View {
        WeekChartColumnView(data: data)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
