//
//  FAQ.swift
//  boatDuck
//
//  Created by Scholar on 6/30/23.
//sajkhdjfh

import SwiftUI

struct FAQ: View {
    var body: some View {

        ZStack{
                Color("background")
                    .ignoresSafeArea()
            Image("FAQ")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 600, height: 600)
            
        }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
