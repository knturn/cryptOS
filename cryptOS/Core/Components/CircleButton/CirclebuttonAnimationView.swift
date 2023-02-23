//
//  CirclebuttonAnimationView.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import SwiftUI

struct CirclebuttonAnimationView: View {
    @Binding var animate: Bool
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0)
            .opacity(animate ? 0.0 : 1.0)
            .onAppear {
                withAnimation(.easeOut(duration: 1.0)){}
            }
        
    }
}

struct CirclebuttonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CirclebuttonAnimationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
    }
}
