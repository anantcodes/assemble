//
//  ListSwipeActionsView.swift
//  assemble
//
//  Created by Anant Kanchan on 16/12/21.
//

import SwiftUI

struct ListSwipeActionsView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsView()
    }
}
