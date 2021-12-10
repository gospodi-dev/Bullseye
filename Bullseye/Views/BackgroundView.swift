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
    @State private var leaderboardIsShowing = false
    
    
    var body: some View {
        HStack{
            Button(action: {
                game.restart()
            }) {
                RoundImageViewStroked(systemName: "arrow.counterclockwise")
            }
            
            Spacer()
            Button(action: {
                leaderboardIsShowing = true
            }) {
                RoundImageViewFilled(systemName: "list.dash")
            }.sheet(isPresented: $leaderboardIsShowing, onDismiss: {}, content: {LeaderBoardView(leaderboardIsShowing: $leaderboardIsShowing)})

            
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
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            ForEach(1..<5) { ring in
                let size = CGFloat(ring * 100)
                let opacity = colorScheme == .dark ? 0.1 : 0.3
            Circle()
                .stroke(lineWidth: 20.0)
                .fill(RadialGradient(gradient: Gradient(colors: [Color("RingColor").opacity(opacity), Color("RingColor").opacity(0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300))
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
