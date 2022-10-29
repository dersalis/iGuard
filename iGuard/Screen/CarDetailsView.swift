//
//  CarDetailsView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct CarDetailsView: View {
    var car: Car
    
    var body: some View {
        ///NavigationView {
            ScrollView(showsIndicators: false) {
                GroupBox(
                    label: Label("Pojazd", systemImage: "car")
                ) {
                    VStack {
                        DetailLineView(title: "Rejestracja", content: car.registrationNo)
                        Divider()
                        
                        DetailLineView(title: "Kierowca", content: car.driverName)
                        Divider()
                        
                        DetailLineView(title: "Dowód / paszport", content: car.driverIdentity)
                        Divider()
                        
                        DetailLineView(title: "Telefon", content: car.driverPhone)
                        Divider()
                        
                        DetailLineView(title: "Firma", content: car.company)
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
                        DetailLineView(title: "Nazwisko", content: car.responsiblePersonName)
                        Divider()
                        
                        DetailLineView(title: "Telefon", content: car.responsiblePersonPhone)
                    }
                    .padding(.vertical, 10)
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                
                GroupBox(
                    label: Label("Rejestracja", systemImage: "clock")
                ) {
                    VStack {
                        DetailLineView(title: "Przepustka", content: ((car.passNo ?? 0)) == 0 ? "-" : String(car.passNo ?? 0))
                        Divider()
                        
                        DetailLineView(title: "Data przyjazdu", content: car.arrivalDate.formatted(date: .numeric, time: .shortened))
                        Divider()
                        
                        DetailLineView(title: "Data wjazdu", content: car.inDate?.formatted(date: .numeric, time: .shortened) ?? "-")
                        Divider()
                        
                        DetailLineView(title: "Data wyjazdu", content: car.outDate?.formatted(date: .numeric, time: .shortened) ?? "-")
                    }
                    .padding(.vertical, 10)
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                
                
                if car.status == Status.outside {
                    Button(action: {
                        
                    }, label: {
                        DetailsActionButtonView(message: "Wpuść")
                    })
                    .padding(.vertical, 20)
                } else if car.status == Status.inside {
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

struct CarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailsView(car: carsData[1])
    }
}
