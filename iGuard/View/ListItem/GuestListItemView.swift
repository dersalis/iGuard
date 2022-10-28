//
//  GuestListItemView.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import SwiftUI

struct GuestListItemView: View {
    var guest: Guest
    
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
                    Text(guest.name)
                        .font(.title2)
                        .foregroundColor(.primary)
                        .padding(.bottom, 4)
                    Label(guest.phone, systemImage: "candybarphone")
                        .foregroundColor(.secondary)
                        .padding(.bottom, -2)
                    Label(guest.arrivalDate.formatted(date: .long, time: .shortened), systemImage: "calendar")
                        .foregroundColor(.secondary)
                }
                .frame(alignment: .leading)
                .padding(.leading, 12)
                .padding(.vertical, -5)
            }
        }
        .onAppear {
            if guest.status == Status.outside {
                statusColor = Color.red
            } else if guest.status == Status.inside {
                statusColor = Color.green
            } else {
                statusColor = Color.gray
            }
        }
    }
}

struct GuestListItemView_Previews: PreviewProvider {
    static var previews: some View {
        GuestListItemView(guest: guestsData[1])
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
