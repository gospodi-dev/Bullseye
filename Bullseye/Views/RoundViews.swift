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
        
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundImageViewStroked(systemName: "arrow.counterclockwise")
    }
}
