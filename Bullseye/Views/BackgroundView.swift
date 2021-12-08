//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Gospodi on 08.12.2021.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    
    var body: some View {
        VStack {
            TopView(game: $game)
        }
        .padding()
        .background(
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
        )
    }
}

struct TopView: View {
    @Binding var game: Game
    
    
    var body: some View {
        HStack{
            RoundImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
            RoundImageViewFilled(systemName: "list.dash")
        }
    }
}




struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
