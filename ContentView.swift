//
//  ContentView.swift
//  DICE
//
//  Created by KIET67 on 09/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var value:Int = 1
    var color:[Color]=[.red,.green,.yellow,.blue,.purple,.gray]
    func rolldice() {
        value = Int.random(in: 1...6)
            
    }
    var body: some View {
        ZStack {Color.yellow
            color[value-1]
            Pipview(value: value)
        }
        .ignoresSafeArea(edges: .all)
        .onTapGesture {
            rolldice()
            
        }
            
        }
    }


#Preview {
    ContentView()
}
