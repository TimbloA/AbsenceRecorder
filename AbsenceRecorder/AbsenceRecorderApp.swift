//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 05/02/2024.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
