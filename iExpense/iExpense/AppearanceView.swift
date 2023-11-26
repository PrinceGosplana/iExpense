//
//  AppearanceView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 26.11.2023.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        VStack {
            Text("Hello, \(name)")
            Button("Dismiss") {
                dismiss()
            }
        }
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
