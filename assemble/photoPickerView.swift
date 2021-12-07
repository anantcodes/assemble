//
//  photoPickerView.swift
//  assemble
//
//  Created by Anant Kanchan on 07/12/21.
//

import SwiftUI

struct photoPickerView: View {
    
    @State private var isShowingPhotoPicker = false
    @State private var avatarImage = UIImage(named: "default-avatar")!
    
    var body: some View {
        VStack {
            Image(uiImage: avatarImage)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    isShowingPhotoPicker = true
                }
            Spacer()
        }
        .navigationTitle("Profile")
        .sheet(isPresented: $isShowingPhotoPicker, content: {
            PhotoPicker(avatarImage: $avatarImage)
        })
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
