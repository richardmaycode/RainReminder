//
//  WatchGroupView.swift
//  RainReminder
//
//  Created by Richard Wise on 6/14/23.
//

import SwiftUI

struct WatchGroupView: View {
    var body: some View {
        VStack {
            Label("Watches", systemImage: "binoculars")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)

            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    WatchGroupView()
}
