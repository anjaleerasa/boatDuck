//
//  culture.swift
//  boatDuck
//
//  Created by Scholar on 6/28/23.
//

import SwiftUI

struct culture: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
        Image("duckFacts")
            .resizable()
            .frame(width:420,height:550)

    }
}

struct culture_Previews: PreviewProvider {
    static var previews: some View {
        culture()
    }
    }
}
