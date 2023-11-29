//
//  CodableView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 29.11.2023.
//

import SwiftUI

struct UserCodable: Codable {
    let firstName: String
    let lastName: String
}

struct CodableView: View {
    @State private var user = UserCodable(firstName: "Harry", lastName: "Porter")
    var body: some View {
        Button("Save user") {
            
        }
    }
    
    private func saveUser() {
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(user) {
            UserDefaults.standard.set(data, forKey: "customKey")
        }
    }
}

#Preview {
    CodableView()
}
