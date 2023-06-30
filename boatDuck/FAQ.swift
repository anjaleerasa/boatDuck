//
//  FAQ.swift
//  boatDuck
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI

struct FAQ: View {
    var body: some View {
        ZStack{
            Image("FAQ")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
