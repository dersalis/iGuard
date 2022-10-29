//
//  CarsData.swift
//  iGuard
//
//  Created by Damian Ruta on 29/10/2022.
//

import Foundation

let carsData: [Car] = [
    Car(registrationNo: "POE 43956", driverName: "Wiktor Molski", driverIdentity: "DO 5434", company: "StarMix", driverPhone: "435 645 900", responsiblePersonName: "Marta Malina", responsiblePersonPhone: "346 453 654", arrivalDate: Date(), inDate: Date(), status: Status.inside),
    Car(registrationNo: "POR 3990", driverName: "Roman Kluska", driverIdentity: "DO 9045", company: "Budimor", driverPhone: "432 654 200", responsiblePersonName: "Olga Wielka", responsiblePersonPhone: "594 003 543", arrivalDate: Date(), status: Status.outside),
    Car(passNo: 123, registrationNo: "POW 5423", driverName: "Marek Wolny", driverIdentity: "DO 9034", company: "Koler", driverPhone: "435 543 345", responsiblePersonName: "Magda Kleker", responsiblePersonPhone: "250 839 983", arrivalDate: Date(), inDate: Date(), outDate: Date(), status: Status.history)
]
