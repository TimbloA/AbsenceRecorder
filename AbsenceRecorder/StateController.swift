//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 07/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
