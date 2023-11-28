//
//  UserDefaultsView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 28.11.2023.
//

import SwiftUI

struct UserDefaultsView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "tap")
        }
    }
}

#Preview {
    UserDefaultsView()
}
