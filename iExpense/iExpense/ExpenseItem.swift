//
//  ExpenseItem.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 30.11.2023.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
