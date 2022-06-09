//
//  TileView.swift
//  SwifTacToe
//
//  Created by Tyler Barnes on 6/9/22.
//

import SwiftUI

struct TileView: View {
    var state: TileState = .empty
    
    var body: some View {
        ZStack {
            switch state {
            case .x:
                Image(systemName: "xmark")
            case .o:
                Image(systemName: "circle")
            case .empty:
                EmptyView()
            }
        }
        .frame(width: 100, height: 100)
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        TileView()
        TileView(state: .x)
        TileView(state: .o)
    }
}
