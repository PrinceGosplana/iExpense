//
//  AppearanceView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 26.11.2023.
//

import SwiftUI

struct SecondView: View {
    let name: String
    var body: some View {
        Text("Hello, \(name)")
    }
}

struct AppearanceView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Bilbo")
        }
    }
}

#Preview {
    AppearanceView()
}
