//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Timblo, Adi (WING) on 01/03/2024.
//

import Foundation

extension FileManager {
    func loadFromFile<T: Codable>(file: String)-> T? {
        // get url to file you want to load from
     let url = getUrlPath(fileName: file)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            }else{
                return nil
            }
        }else{
            return nil
        }
    }


    func saveToFile<T: Codable>(file: String, object: T) {
        //create json encoder
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(object) {
            //take encoded objects and convert to string
            if let json = String(data:encoded,encoding: .utf8) {
                //create file path
                let url = getUrlPath(fileName: file)
                do {
                    //write to json file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }

    func getUrlPath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(fileName)
        return url
    }
}
