//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct RootTabView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        TabView {
            DivisionView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.xyaxis.line")
                    Text("Statistics")
                }
        }
    }
}

#Preview {
    RootTabView()
        .environmentObject(StateController())
}
