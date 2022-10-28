//
//  CarsView.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import SwiftUI

struct CarsView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                NavigationLink(destination: CarDetailsView()) {
                    GroupBox() {
                        ZStack(alignment: .leading) {
                            HStack {
                                Rectangle()
                                    .fill(.red)
                                    .frame(width: 14, height: .infinity)
                                    .cornerRadius(8)
                                    .padding(.horizontal, -16)
                                    .padding(.vertical, -16)
                                Spacer()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("POZ 54346")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 4)
                                Label("Damian Ruta", systemImage: "person")
                                    .foregroundColor(.secondary)
                                    .padding(.bottom, -2)
                                Label("23.12.2022 13:45", systemImage: "calendar")
                                    .foregroundColor(.secondary)
                            }
                            .frame(alignment: .leading)
                            .padding(.leading, 12)
                            .padding(.vertical, -5)
                        }
                    }
                }
                
                
                NavigationLink(destination: CarDetailsView()) {
                    GroupBox() {
                        ZStack(alignment: .leading) {
                            HStack {
                                Rectangle()
                                    .fill(.green)
                                    .frame(width: 14, height: .infinity)
                                    .cornerRadius(8)
                                    .padding(.horizontal, -16)
                                    .padding(.vertical, -16)
                                Spacer()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("POZ 5485")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 4)
                                Label("Damian Ruta", systemImage: "person")
                                    .foregroundColor(.secondary)
                                    .padding(.bottom, -2)
                                Label("23.12.2022 13:45", systemImage: "calendar")
                                    .foregroundColor(.secondary)
                            }
                            .frame(alignment: .leading)
                            .padding(.leading, 12)
                            .padding(.vertical, -5)
                        }
                    }
                }
                
                
                NavigationLink(destination: CarDetailsView()) {
                    GroupBox() {
                        ZStack(alignment: .leading) {
                            HStack {
                                Rectangle()
                                    .fill(.gray)
                                    .frame(width: 14, height: .infinity)
                                    .cornerRadius(8)
                                    .padding(.horizontal, -16)
                                    .padding(.vertical, -16)
                                Spacer()
                            }
                            
                            VStack(alignment: .leading) {
                                Text("POZ 3471")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                                    .padding(.bottom, 4)
                                Label("Damian Ruta", systemImage: "person")
                                    .foregroundColor(.secondary)
                                    .padding(.bottom, -2)
                                Label("23.12.2022 13:45", systemImage: "calendar")
                                    .foregroundColor(.secondary)
                            }
                            .frame(alignment: .leading)
                            .padding(.leading, 12)
                            .padding(.vertical, -5)
                        }
                    }
                }
                
            }
            .navigationTitle("Pojazdy")
            .padding(.leading)
            .padding(.trailing)
        }
    }
}

struct CarsView_Previews: PreviewProvider {
    static var previews: some View {
        CarsView()
    }
}
