//
//  Shapes.swift
//  Bullseye
//
//  Created by Gospodi on 08.12.2021.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Circle()
                //.fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                //.inset(by: 10.0)
                //.stroke(Color.blue, lineWidth: 20.0)
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: 100)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: 100)

        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
