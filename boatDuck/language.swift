//
//  language.swift
//  boatDuck
//
//  Created by Scholar on 6/29/23.
//
//huyhuyguggytg

import SwiftUI

struct language: View {
    @State private var lang = false
    var body: some View {
    ZStack{
        Color("tessaColor")
            .edgesIgnoringSafeArea(.all)
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
            Button("Language Learning and Translation Websites"){
                
                lang = true
            }
            
        }
    }
        .sheet(isPresented: $lang){
            //tea background???
            Text("Language Learning Websites")
                .padding()
            Link("Duolingo", destination: URL(string: "https://www.duolingo.com/course/ja/en/Learn-Japanese")!)
            Link("Rosetta Stone", destination: URL(string: "https://www.rosettastone.com/?gclid=CjwKCAjw-vmkBhBMEiwAlrMeF55ygrZOwlQFhBhUIEsqidCneQumdoTpBtRShA3Cm56hFFIT9cedVxoCfIAQAvD_BwE")!)
            Link("Babbel", destination: URL(string: "https://get.babbel.com/promo_ame_usa-en_ap_prices/?bclid=ymnS9XxFQxyPTM9zNpzEaQKDUkF2jJRPP3SUw80&bsc=2023-impact-affiliate-july4th-promo&btp=default&irgwc=1&utm_campaign=Buyer%27s+Guide%E2%80%8B&utm_content=impact..13589..4th+of+July+Sale+-+For+a+limited+time+get+up+to+60%25+off+a+Babbel+subscription..1199942&utm_medium=affiliates&utm_source=impact&utm_term=generic_v1")!)
            Text("      ")
            Text("Translation Websites")
                .padding()
            Link("Google Translate", destination: URL(string: "https://apps.apple.com/us/app/google-translate/id414706506")!)
            Link("iTranslate", destination: URL(string: "https://apps.apple.com/us/app/itranslate-translator/id288113403")!)
            Link("Waygo", destination: URL(string: "https://apps.apple.com/us/app/waygo-chinese-japanese-and-korean-translator/id496038103")!)
        }
    }
}

struct language_Previews: PreviewProvider {
    static var previews: some View {
        language()
    }
}
