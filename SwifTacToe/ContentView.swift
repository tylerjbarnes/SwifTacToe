//
//  ContentView.swift
//  SwifTacToe
//
//  Created by Tyler Barnes on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var tileStates = Array(repeating: TileState.empty, count: 9)
    @State var xIsUp = true
    
    var body: some View {
        
        // A column to contain rows
        VStack(spacing: 0) {
            
            // Add 3 rows to the column
            ForEach(0..<3) { row in
                HStack(spacing: 0) {
                    
                    // Add 3 tiles to each row
                    ForEach(0..<3) { column in
                        
                        // Calculate the index of the tile
                        // where 0 is the upper left
                        // and 8 is the bottom right
                        let tileIndex = row * 3 + column
                        
                        // Present a tile view, passing the correct state
                        // so it knows whether to present x, o, or nothing
                        TileView(state: tileStates[tileIndex])
                            .border(.gray, width: 2)
                        
                            // When a tile is tapped, call `markTile`
                            // with the index of the tile that was tapped
                            .contentShape(Rectangle())
                            .onTapGesture { markTile(index: tileIndex) }
                    }
                }
            }
        }
    }
    
    private func markTile(index: Int) {
        // @TODO: Update the `tileStates` data
        
        // @TODO: Switch whose turn it is
        
        // After marking the tile, check if someone won
        checkForVictory()
    }
    
    private func checkForVictory() {
        // @TODO: Determine if either player won
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
