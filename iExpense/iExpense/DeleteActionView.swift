//
//  DeleteActionView.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 27.11.2023.
//

import SwiftUI

struct DeleteActionView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("Row \($0)")
                }
                .onDelete(perform: removeRows)
            }
            
            Button("Add number") {
                numbers.append(currentNumber)
                currentNumber += 1
            }
        }
    }
    
    private func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    DeleteActionView()
}
