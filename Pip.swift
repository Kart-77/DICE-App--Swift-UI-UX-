//
//  Pip.swift
//  DICE
//
//  Created by KIET67 on 09/10/26.
//

import SwiftUI

struct Pip: View {
    let visible: Bool
    var body: some View {
        Circle()
            .fill(.black.opacity(0.6))
            .frame(width: 100, height: 100, alignment:  .center)
            .opacity(visible ? 1 : 0)
    }
}

#Preview {
    Pip(visible: true)
}
