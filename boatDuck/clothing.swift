//
//  clothing.swift
//  boatDuck
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct clothing: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            Image("clothing")
                .resizable()
                .frame(width:410,height:600)
        }
    }
}

struct clothing_Previews: PreviewProvider {
    static var previews: some View {
        clothing()
    }
    }

