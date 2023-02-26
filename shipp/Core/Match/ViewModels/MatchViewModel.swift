//
//  MatchViewModel.swift
//  shipp
//
//  Created by Vivek Olumbe on 1/17/23.
//

import Foundation
import Amplify

final class MatchViewModel: NSObject, ObservableObject {
    @Published var matchTimeRemaining = 900 // (900 seconds = 15 minutes)
    

}
