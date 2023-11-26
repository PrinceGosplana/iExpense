//
//  ClassWithStateView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 26.11.2023.
//

import SwiftUI

@Observable
class User {
    var firstName = "Lama"
}

struct ClassWithStateView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName)")
            TextField("Name", text: $user.firstName)
        }
        .padding()
    }
}

#Preview {
    ClassWithStateView()
}
