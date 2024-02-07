//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        Text("Statistics View: \(state.divisions[0].code)")
        
    }
}

#Preview {
    StatisticsView()
        .environmentObject(StateController())

}
