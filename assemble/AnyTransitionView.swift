//
//  AnyTransitionView.swift
//  assemble
//
//  Created by Anant Kanchan on 09/01/22.
//

import SwiftUI

struct RotateViewModifier: ViewModifier {
    
    let rotation: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
    }
    
}

extension AnyTransition {
    
    static var rotating: AnyTransition {
        return AnyTransition.modifier(
            active: RotateViewModifier(rotation: 180),
            identity: RotateViewModifier(rotation: 0))
    }
}

struct AnyTransitionView: View {
    
    @State private var showRectangle: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if(showRectangle) {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 250, height: 350)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .modifier(RotateViewModifier())
//                    .transition(.move(edge: .leading))
                    .transition(AnyTransition.rotating.animation(.easeInOut))
            }
            
            
            
            Spacer()
            
            Text("Click Me!")
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showRectangle.toggle()
                    }
                }
        }
    }
}

struct AnyTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        AnyTransitionView()
    }
}
