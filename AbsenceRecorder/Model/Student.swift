//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 05/02/2024.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
