//
//  Pipview.swift
//  DICE
//
//  Created by KIET67 on 09/10/26.
//

import SwiftUI

struct Pipview: View {
    
    let value:Int
    
    var arr:[Int]{
        switch value {
        case 1:
            return [5]
        case 2:
            return [1,9]
        case 3:
            return [1,5,9]
        case 4:
            return [1,3,7,9]
        case 5:
            return [1,3,5,7,9]
        case 6:
            return[1,4,7,3,6,9]
        default: return []
        
        }
    }
    var body: some View {
        Grid(horizontalSpacing: 35, verticalSpacing: 100){
            GridRow{
                Pip(visible:arr.contains(1))
                Pip(visible:arr.contains(2))
                Pip(visible:arr.contains(3))
            }
            GridRow{
                Pip(visible:arr.contains(4))
                Pip(visible:arr.contains(5))
                Pip(visible:arr.contains(6))
            }
            GridRow{
                Pip(visible:arr.contains(7))
                Pip(visible:arr.contains(8))
                Pip(visible:arr.contains(9))
            }
        }
    }
}

#Preview {
    Pipview(value:5)
}
