//
//  GuestData.swift
//  iGuard
//
//  Created by Damian Ruta on 28/10/2022.
//

import Foundation



let guestsData: [Guest] = [
    Guest(name: "Marcin Drewny", identity: "DO 3473", company: "Srubex", phone: "342 654 843", responsiblePersonName: "Monika Drobna", responsiblePersonPhone: "543 765 234", arrivalDate: Date(), status: Status.outside),
    Guest(name: "Krzysztof Wolny", identity: "DO 3473", company: "Drubet", phone: "342 654 843", responsiblePersonName: "Aldona Domagała", responsiblePersonPhone: "543 765 234", arrivalDate: Date(), status: Status.inside),
    Guest(name: "Andrzej Kąsała", identity: "DO 3473", company: "Molinek", phone: "342 654 843", responsiblePersonName: "Ala Wiśnia", responsiblePersonPhone: "543 765 234", arrivalDate: Date(), status: Status.history),
]
