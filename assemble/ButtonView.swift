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
            //Text("Learn More")
            Label("Learn More",systemImage: "book.fill")
        }
        //.buttonStyle(.borderedProminent)
        .buttonStyle(.bordered)
        .tint(.pink)
        //.foregroundColor(.pink)
       // .buttonBorderShape(.roundedRectangle(radius: 12))
        .buttonBorderShape(.capsule)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
    }
}
