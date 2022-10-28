//
//  GuestModel.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import Foundation

struct Guest: Identifiable {
    var id: UUID = UUID()
    var passNo: Int?
    var name: String
    var identity: String
    var company: String
    var phone: String
    var responsiblePersonName: String
    var responsiblePersonPhone: String
    var arrivalDate: Date
    var inDate: Date?
    var outDate: Date?
    var status: Status = Status.outside
}
