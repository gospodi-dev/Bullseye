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
        .background(RingView())
    }
}

struct TopView: View {
    @Binding var game: Game
    
    
    var body: some View {
        HStack{
            Button(action: {
                game.restart()
            }) {
                RoundImageViewStroked(systemName: "arrow.counterclockwise")
            }
            
            Spacer()
            RoundImageViewFilled(systemName: "list.dash")
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(spacing: 5) {
            LabelText(text: title.uppercased())
            RoundRectTextView(text: text)
        }
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

struct RingView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            ForEach(1..<5) { ring in let size = CGFloat(ring * 100)
            Circle()
                .stroke(lineWidth: 20.0)
                .fill(Color("RingColor"))
                .frame(width: size, height: size)
            }
        }
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
