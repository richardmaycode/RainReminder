//
//  SummaryGroupView.swift
//  RainReminder
//
//  Created by Richard Wise on 6/14/23.
//

import SwiftUI

struct SummaryGroupView: View {
    var body: some View {
        VStack {
            Text("Today")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)

            Grid {
                GridRow {
                    SummaryView(amount: "95.0", label: "chance", icon: "percent")
                    SummaryView(amount: "3.2\"", label: "amount", icon: "drop")
                }
            }

            .frame(maxHeight: 200)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SummaryGroupView()
}
