//
//  ContentView.swift
//  RainReminder
//
//  Created by Richard Wise on 6/14/23.
//

import SwiftUI

struct ContentView: View {

    @State var appModel = AppModel()


    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                SummaryGroupView()
                WatchGroupView()
            }
            .navigationTitle(appModel.location)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                ForEach(appModel.locations, id: \.self) { loction in
                    Button {
                        appModel.location = loction
                    } label: {
                        Label(loction, systemImage: "mappin.and.ellipse")
                    }
                }

                Button {

                } label: {
                    Label("Add Location", systemImage: "plus")
                }



            }
        }

    }
}

#Preview {
    ContentView()
}
