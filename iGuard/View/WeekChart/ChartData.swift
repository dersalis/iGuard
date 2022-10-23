//
//  ChartData.swift
//  iGuard
//
//  Created by Damian Ruta on 23/10/2022.
//

import Foundation
import SwiftUI

struct ChartData {
    var columns: [ChartColumnData]
    var avarage: CGFloat {
        var sum: CGFloat = 0
        var avarage: CGFloat = 0
        
        for index in 0..<7 {
            sum += columns[index].value
        }
        avarage = sum / 7
        
        print("Sum: \(sum), avr: \(avarage)")
        return avarage
    }
}
