//
//  colorPickerView.swift
//  assemble
//
//  Created by Anant Kanchan on 26/11/21.
//

import SwiftUI

struct colorPickerView: View {
    
    @State private var selectedColor: Color = .red
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 200, height: 200)
                .padding()
            
            ColorPicker("Change Circle color", selection: $selectedColor)
                .padding()
        }
    }
}

struct colorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        colorPickerView()
    }
}
