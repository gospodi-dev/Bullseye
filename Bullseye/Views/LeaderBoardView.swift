//
//  LeaderBoardView.swift
//  Bullseye
//
//  Created by Gospodi on 10.12.2021.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        RowView(index: 1, score: 10, date: Date())
    }
}

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View {
        HStack {
        Slider(value: .constant(50.0))
                .padding()
        }
        .background(
            RoundedRectangle(
                cornerRadius:
                        .infinity)
                .strokeBorder(Color("LeaderboardRowColor"),
                              lineWidth: Constants.General.strokeWidth
            )
                .padding(.leading)
                .padding(.trailing)
                .frame(maxWidth: 480.0)
        )
    }
}


struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
        LeaderBoardView()
            .previewLayout (.fixed(width: 568, height: 320))
        LeaderBoardView()
            .preferredColorScheme(.dark)
        LeaderBoardView()
            .preferredColorScheme(.dark)
            .previewLayout (.fixed(width: 568, height: 320))
    }
}
