//
//  ButtonView.swift
//  assemble
//
//  Created by Anant Kanchan on 06/12/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("Learn More Tapped")
        } label: {
            Text("Learn More")
        }
        //.buttonStyle(.borderedProminent)
        .buttonStyle(.bordered)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
    }
}
