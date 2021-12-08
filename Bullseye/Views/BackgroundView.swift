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
            Spacer()
            BottomView(game: $game)
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

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        Color.gray
            .frame(width: 56, height: 100)
    }
}


struct BottomView: View {
    @Binding var game: Game
    
    
    var body: some View {
        HStack{
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
