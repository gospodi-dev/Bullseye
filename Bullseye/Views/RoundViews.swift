//
//  RoundViews.swift
//  Bullseye
//
//  Created by Gospodi on 08.12.2021.
//

import SwiftUI

struct RoundImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle().strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
            )
    }
}

struct RoundImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
    }
}

struct PreviewView: View {
    
    var body: some View {
        VStack(spacing: 10) {
        RoundImageViewStroked(systemName: "arrow.counterclockwise")
        RoundImageViewStroked(systemName: "list.dash")
    }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
