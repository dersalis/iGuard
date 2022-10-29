//
//  GuestDetailsView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct GuestDetailsView: View {
    var guest: Guest
    
    var body: some View {
        ///NavigationView {
            ScrollView(showsIndicators: false) {
                GroupBox(
                    label: Label("Gość", systemImage: "person")
                ) {
                    VStack {
                        DetailLineView(title: "Nazwa", content: guest.name)
                        Divider()
                        
                        DetailLineView(title: "Dowód / paszport", content: guest.identity)
                        Divider()
                        
                        DetailLineView(title: "Telefon", content: guest.phone)
                        Divider()
                        
                        DetailLineView(title: "Firma", content: guest.company)
                        //Divider()
                    }
                    .padding(.vertical, 10)
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                
                GroupBox(
                    label: Label("Osoba odpowiedzialna", systemImage: "person")
                ) {
                    VStack {
                        DetailLineView(title: "Nazwisko", content: guest.responsiblePersonName)
                        Divider()
                        
                        DetailLineView(title: "Telefon", content: guest.responsiblePersonPhone)
                    }
                    .padding(.vertical, 10)
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                
                GroupBox(
                    label: Label("Rejestracja", systemImage: "clock")
                ) {
                    VStack {
                        DetailLineView(title: "Przepustka", content: ((guest.passNo ?? 0)) == 0 ? "-" : String(guest.passNo ?? 0))
                        Divider()

                        DetailLineView(title: "Data przyjazdu", content: guest.arrivalDate.formatted(date: .numeric, time: .shortened))
                        Divider()

                        DetailLineView(title: "Data wjazdu", content: guest.inDate?.formatted(date: .numeric, time: .shortened) ?? "-")
                        Divider()

                        DetailLineView(title: "Data wyjazdu", content: guest.outDate?.formatted(date: .numeric, time: .shortened) ?? "-")
                    }
                    .padding(.vertical, 10)
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                
                if guest.status == Status.outside {
                    Button(action: {
                        
                    }, label: {
                        DetailsActionButtonView(message: "Wpuść")
                    })
                    .padding(.vertical, 20)
                } else if guest.status == Status.inside {
                    Button(action: {
                        
                    }, label: {
                        DetailsActionButtonView(message: "Wypuść")
                    })
                    .padding(.vertical, 20)
                }
                
            }
            //.padding(.top, -20)
            //.navigationTitle(car.registrationNo)
        //}
    }
}

struct GuestDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        GuestDetailsView(guest: guestsData[0])
    }
}
