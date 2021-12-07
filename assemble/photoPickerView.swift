//
//  photoPickerView.swift
//  assemble
//
//  Created by Anant Kanchan on 07/12/21.
//

import SwiftUI

struct photoPickerView: View {
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "default-avatar")!)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

struct photoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            photoPickerView()
        }
        .preferredColorScheme(.dark)
    }
}
