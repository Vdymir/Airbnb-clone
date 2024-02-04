//
//  CustomButton.swift
//  Airbnb-clone
//
//  Created by Vladimir Castañeda on 4/02/24.
//

import SwiftUI

struct CustomButton: View {
    
    let title: String
    let onAction: () -> Void
    var width: CGFloat = 360 // Valor por defecto para el ancho
    var height: CGFloat = 48 // Valor por defecto para la altura
    
    var body: some View {
        Button(action: onAction) {
            Text(title)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .font(.subheadline)
                .frame(width: width, height: height)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    CustomButton(title: "Example", onAction: doIt)
}
func doIt() {
    print("do nothing")
}
