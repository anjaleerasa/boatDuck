//
//  activities.swift
//  boatDuck
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI

struct activities: View {
    var body: some View {
        ZStack{
            Color("background")
                .ignoresSafeArea()
            Image("activity")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
            
        
        
    }
}

struct activities_Previews: PreviewProvider {
    static var previews: some View {
        activities()
    }
}
