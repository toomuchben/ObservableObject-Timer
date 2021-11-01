//
//  BasicTimer.swift
//  ObservableObject-Timer
//
//  Created by Ben Bradley on 2021-10-18.
//

import SwiftUI

class BasicTimer: ObservableObject {
    
    @Published var seconds: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.seconds += 1
        }
    }
}
