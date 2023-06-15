//
//  AppModel.swift
//  RainReminder
//
//  Created by Richard Wise on 6/15/23.
//

import Foundation
import Observation

@Observable
class AppModel {
    var locations: [String] = ["Parkland", "Deland", "Miami"]

    var location: String = "Parkland"
}
