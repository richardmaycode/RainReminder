//
//  SummaryView.swift
//  RainReminder
//
//  Created by Richard Wise on 6/14/23.
//

import SwiftUI

struct SummaryView: View {

    var amount: String
    var label: String
    var icon: String
    var iconSize: CGFloat = 125

    var body: some View {
        VStack {

            Text("\(amount)")
//            Text("\((amount * 100), specifier: "%.f %%")")
                .font(.system(size: 60))
//            Text(label.capitalized)
//                .font(.title)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .foregroundStyle(.white.shadow(.drop(radius: 2)))
        .background {
            RoundedRectangle(cornerRadius: 16.0)
                .fill(.indigo.opacity(0.8))
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: icon)
                        .font(.system(size: 125))
                        .foregroundStyle(.white.opacity(0.5).shadow(.drop(color: .black, radius: 2.0)))
                        .offset(x: 36, y: 30)
                        .clipped()
                }

        }

    }
}

#Preview {
    SummaryView(amount: "95.0", label: "chance", icon: "percent")
        .frame(width: 175, height: 175)
}
