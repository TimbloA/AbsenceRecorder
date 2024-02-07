//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Adi Timblo on 07/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let division: Division
    var body: some View {
        Text(division.code)
    }
}

#Preview {
    AbsenceView(division: Division.examples[0])
}
