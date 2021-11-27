//
//  swiftUIForm.swift
//  assemble
//
//  Created by Anant Kanchan on 27/11/21.
//

import SwiftUI

struct swiftUIForm: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    
    var body: some View {
        Form {
            TextField("First Name", text: $firstName)
            TextField("Last Name", text: $lastName)
        }
    }
}

struct swiftUIForm_Previews: PreviewProvider {
    static var previews: some View {
        swiftUIForm()
    }
}
