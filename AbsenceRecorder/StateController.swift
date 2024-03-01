//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 07/02/2024.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func loadFromFile() {
        if let loaded: [Division] = FileManager.default.loadFromFile(file: "divisions.json"){
            divisions = loaded
        }
    }
    
    
    func saveToFile() {
        FileManager.default.saveToFile(file: "divisions.json", object: divisions)
    }
    
    func getUrlPath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(fileName)
        return url
    }
}
