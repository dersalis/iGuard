//
//  CarListItemView.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import SwiftUI

struct CarListItemView: View {
    var car: Car
    
    @State var statusColor: Color = Color.gray
    
    var body: some View {
        GroupBox() {
            ZStack(alignment: .leading) {
                HStack {
                    Rectangle()
                        .fill(statusColor)
                        .frame(width: 14, height: .infinity)
                        .cornerRadius(8)
                        .padding(.horizontal, -16)
                        .padding(.vertical, -16)
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    Text(car.registrationNo)
                        .font(.title2)
                        .foregroundColor(.primary)
                        .padding(.bottom, 4)
                    HStack {
                        Label(car.driverName, systemImage: "person")
                            .foregroundColor(.secondary)
                            .frame(width: 200, alignment: .leading)
                        Label(car.company, systemImage: "building.2")
                            .foregroundColor(.secondary)
                    }
                    .padding(.bottom, -2)
                    Label(car.arrivalDate.formatted(date: .long, time: .shortened), systemImage: "calendar")
                        .foregroundColor(.secondary)
                }
                .frame(alignment: .leading)
                .padding(.leading, 12)
                .padding(.vertical, -5)
            }
        }
        .onAppear {
            if car.status == Status.outside {
                statusColor = Color.red
            } else if car.status == Status.inside {
                statusColor = Color.green
            } else {
                statusColor = Color.gray
            }
        }
    }
}

struct CarListItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarListItemView(car: carsData[1])
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
