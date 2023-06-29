//
//  culture.swift
//  boatDuck
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct culture: View {
    var body: some View {
        Image("duckFacts")
            .resizable()
            .frame(width:480,height:630)
        Text("culture view")
    }
}

struct culture_Previews: PreviewProvider {
    static var previews: some View {
        culture()
    }
}
