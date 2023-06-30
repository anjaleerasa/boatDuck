//
//  language.swift
//  boatDuck
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct language: View {
    @State private var lang = false
    var body: some View {
        VStack{
            Text("Key Japanese Words/Phrases")
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    Text("Konnichiwa!")
                    Text("Arigatou gozaimasu")
                    Text("Sumimasen")
                    Text("Doko desu ka?")
                    Text("Itsu desu ka?")
                    Text("Doushite?")
                    Text("Dochira desu ka?")
                    Text("Nan desu ka?")
                    Text("Dare desu ka?")
                    Text("Eigo te iu no wa...")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Hello!")
                    Text("Thank you!")
                    Text("I'm sorry.")
                    Text("Where is it?")
                    Text("When is it?")
                    Text("Why?")
                    Text("Which one is it?")
                    Text("What is it?")
                    Text("Who is it?")
                    Text("And in English, that's...")
                }
                Spacer()
            }
            .padding()
            //            Text("Language and Vocabulary")
            //            Text("Learning Apps/Websites")
            Button("Language Learning Websites/Apps "){
                lang = true
            }
            
        }
        .sheet(isPresented: $lang){
            //tea background???
            Link("Duolingo", destination: URL(string: "https://www.duolingo.com/course/ja/en/Learn-Japanese")!)
        }
    }
}

struct language_Previews: PreviewProvider {
    static var previews: some View {
        language()
    }
}
