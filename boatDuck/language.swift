//
//  language.swift
//  boatDuck
//matt
//  Created by Scholar on 6/29/23.
//
//kyghr
//jgoisrjgodjgho

import SwiftUI

struct language: View {
    @State private var lang = false
    var body: some View {
    ZStack{
        Color("background")
            .edgesIgnoringSafeArea(.all)
        VStack{
            Text("✿-Key Japanese Words/Phrases-✿")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(Color("lang"))
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    Text("Konnichiwa!")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Arigatou gozaimasu")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Sumimasen")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Doko desu ka?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Itsu desu ka?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Doushite?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Dochira desu ka?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Nan desu ka?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Dare desu ka?")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Eigo te iu no wa...")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Hello!")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("Thank you!")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("I'm sorry.")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("Where is it?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("When is it?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("Why?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("Which one is it?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("What is it?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("Who is it?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                    Text("And in English, that's...")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("lang"))
                        .padding()
                }
                Spacer()
            }
            .padding()
            //            Text("Language and Vocabulary")
            //            Text("Learning Apps/Websites")
            Button("Language Learning and Translation Websites"){
                
                lang = true
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color("lang"))
            .cornerRadius(10)
            
        }
    }
    .sheet(isPresented: $lang){
        //tea background???
        ZStack{
                Color("blue")
                    .ignoresSafeArea(.all)
            VStack{
                Text("✿-Language Learning Websites-✿")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("lang"))
                    .padding()
                Link("Duolingo", destination: URL(string: "https://www.duolingo.com/course/ja/en/Learn-Japanese")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
                Link("Rosetta Stone", destination: URL(string: "https://www.rosettastone.com/buy/learn-japanese/")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
                Link("Ling", destination: URL(string: "https://ling-app.com/learn-japanese/")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
                Text("      ")
                Text("✿-Translation Websites-✿")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("lang"))
                    .padding()
                Link("Google Translate", destination: URL(string: "https://apps.apple.com/us/app/google-translate/id414706506")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
                Link("iTranslate", destination: URL(string: "https://apps.apple.com/us/app/itranslate-translator/id288113403")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
                Link("Waygo", destination: URL(string: "https://apps.apple.com/us/app/waygo-chinese-japanese-and-korean-translator/id496038103")!)
                    .foregroundColor((Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                        )
                .font(.headline)
                .fontWeight(.semibold)
            }
        }
        }
    }
}

struct language_Previews: PreviewProvider {
    static var previews: some View {
        language()
    }
}
