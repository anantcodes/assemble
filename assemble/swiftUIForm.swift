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
    @State private var birthdate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Number of Likes", value: $numberOfLikes, in: 1...100)
                    Text("This video has \(numberOfLikes) likes")
                }
            }
            .accentColor(.red)
            .navigationTitle("Account")
        }
    }
}

struct swiftUIForm_Previews: PreviewProvider {
    static var previews: some View {
        swiftUIForm()
    }
}
