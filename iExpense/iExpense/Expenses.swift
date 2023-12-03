//
//  Expenses.swift
//  iExpense
//
//  Created by OLEKSANDR ISAIEV on 30.11.2023.
//

import SwiftUI

@Observable
class Expenses {
    var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        guard let savedItems = UserDefaults.standard.data(forKey: "Items") else {
            items = []
            return
        }
        guard let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) else {
            items = []
            return
        }
        items = decodedItems
    }
}
