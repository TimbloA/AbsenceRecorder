//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 05/02/2024.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        //loop as many times as the parameter size
        for i in 1...size {
            let student = Student(forename: "Firstname:\(i)", surname: "Lastname:\(i)", birthday: Date())
            division.students.append(student)
        }
        return division
    }
    
    static let examples = [Division.createDivision(code: "ADT-2", of: 4),
                           Division.createDivision(code: "LMI-5", of: 6),
                           Division.createDivision(code: "SAT-4", of: 5)]
    #endif
}
