//
//  ContentView.swift
//  iGuard
//
//  Created by Damian Ruta on 22/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // MARK: - POJAZDY OCZEKUJĄCE
            
            VStack {
                HStack {
                    Image(systemName: "timer")
                        .font(.system(size: 18))
                    Text("Oczekujące")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 1)
                
                HStack {
                    Text("Wszystkie pojazdy aktualnie oczekujące na wjazd na terenie firmy.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                Divider()
                
                HStack {
                    Text("20")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("pojazdy")
                        .font(.system(size: 14))
                        .opacity(0.5)
                        .padding(.leading, -5)
                        .padding(.bottom, -4)
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.secondary.opacity(0.35))
            .cornerRadius(10)
            
            // MARK: - POJAZDY NA TERENIE
            
            VStack {
                HStack {
                    Image(systemName: "arrowshape.right")
                        .font(.system(size: 18))
                    Text("Na terenie")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 1)
                
                HStack {
                    Text("Wszystkie pojazdy znajdujące się aktualnie na terenie firmy.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                Divider()
                
                HStack {
                    Text("20")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("pojazdy")
                        .font(.system(size: 14))
                        .opacity(0.5)
                        .padding(.leading, -5)
                        .padding(.bottom, -4)
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                
                Divider()
                
                // MARK: - WYKRES
                
                HStack(spacing: 18) {
                    ColumnView(name: "P", value: 35)
                    ColumnView(name: "W", value: 55)
                    ColumnView(name: "Ś", value: 45)
                    ColumnView(name: "C", value: 75)
                    ColumnView(name: "P", value: 15)
                    ColumnView(name: "S", value: 65)
                    ColumnView(name: "N", value: 90)
                    
                    Spacer()
                }
                //.background(.blue.opacity(0.1))
                .padding(.horizontal, 20)
                .padding(.top, 10)
                .padding(.bottom, 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.secondary.opacity(0.35))
            .cornerRadius(10)
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
