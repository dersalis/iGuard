//
//  CarModel.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import Foundation

struct Car: Identifiable {
    var id: UUID = UUID()
    var passNo: Int?
    var registrationNo: String
    var driverName: String
    var driverIdentity: String
    var company: String
    var driverPhone: String
    var responsiblePersonName: String
    var responsiblePersonPhone: String
    var arrivalDate: Date
    var inDate: Date?
    var outDate: Date?
    var status: Status = Status.outside
}
