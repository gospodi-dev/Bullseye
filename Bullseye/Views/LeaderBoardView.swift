//
//  LeaderBoardView.swift
//  Bullseye
//
//  Created by Gospodi on 10.12.2021.
//

import SwiftUI

struct LeaderBoardView: View {
    @Binding var leaderboardIsShowing: Bool
    
    
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                HeaderView(leaderboardIsShowing: $leaderboardIsShowing)
                LabelView()
                RowView(index: 1, score: 10, date: Date())
            }
        }
    }
}

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack {
            RoundedTextView(text: String(index))
            Spacer()
            ScoreText(score: score)
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            DaterText(date: date)
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
                
        }
        .background(
            RoundedRectangle(cornerRadius:
                .infinity)
                .strokeBorder(Color("LeaderboardRowColor"),
                lineWidth: Constants.General.strokeWidth
            )
            .padding(.leading)
            .padding(.trailing)
            .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
        )
    }
}

struct HeaderView: View {
    @Binding var leaderboardIsShowing: Bool
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            HStack {
            if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                BigBoldText(text: "LeaderBoard")
                    .padding(.leading)
                Spacer()
            } else {
                BigBoldText(text: "LeaderBoard")
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    leaderboardIsShowing = false
                }) {
                    RoundImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                }
            }
        }
    }
}

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
            LabelText(text: "Score")
                .frame(width: Constants.Leaderboard.leaderboardScoreColWidth)
            Spacer()
            LabelText(text: "Date")
                .frame(width: Constants.Leaderboard.leaderboardDateColWidth)
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderboardMaxRowWidth)
    }
}


struct LeaderBoardView_Previews: PreviewProvider {
    static private var leaderboardIsShowing = Binding.constant(false)
    static var previews: some View {
        LeaderBoardView(leaderboardIsShowing: leaderboardIsShowing)
        LeaderBoardView(leaderboardIsShowing: leaderboardIsShowing)
            .previewLayout (.fixed(width: 568, height: 320))
        LeaderBoardView(leaderboardIsShowing: leaderboardIsShowing)
            .preferredColorScheme(.dark)
        LeaderBoardView(leaderboardIsShowing: leaderboardIsShowing)
            .preferredColorScheme(.dark)
            .previewLayout (.fixed(width: 568, height: 320))
    }
}
