//
//  Modifiers.swift
//  Slot Machine
//
//  Created by Sandesh on 17/08/20.
//  Copyright © 2020 devsandesh. All rights reserved.
//

import SwiftUI

struct ShadowModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
        .shadow(color: Color.colorTransparentBlack, radius: 0, x: 0, y: 6)
    }
}


struct ButtonModiFier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .accentColor(Color.white)
    }
}

struct  ScoreNumberModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .shadow(color: Color.colorTransparentBlack, radius: 0, x: 0, y: 3)
        .layoutPriority(1)
    }
}

struct  ScoreContainerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding(.vertical, 4)
        .padding(.horizontal, 16)
        .frame(minWidth: 128)
        .background(
            Capsule()
                .foregroundColor(.colorTransparentBlack)
        )
    }
}
