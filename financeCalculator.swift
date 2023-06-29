//
//  financeCalculator.swift
//  boatDuck
//
//  Created by Scholar on 6/27/23.
//WOAHSHS

import SwiftUI

struct financeCalculator: View {
    @State private var code = ""
    @State private var savedNumber = Double()
    @State public var tFood = 0.0
    @State public var tTrspt = 0.0
    @State public var tAccm = 0.0
    @State public var tActv = 0.0
    @State public var tTotal = 0.0
    @State public var trueFalse = false
  
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            TextField("Enter your total budget in USD:", text : $code)
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .padding()
                .border(Color(hue: 0.067, saturation: 0.17, brightness: 0.849))
                .multilineTextAlignment(.center)
                .frame(width:300,height:40)
            
            Button(action:{
                if let integerValue = Double(code){
                    savedNumber = integerValue
                }
                code = ""
                tTotal = savedNumber
                tFood = savedNumber * 0.2
                tTrspt = savedNumber * 0.45
                tAccm = savedNumber * 0.15
                tActv = savedNumber * 0.2
                //var totalUSD = savedNumber
            })
            //var totalUSD = savedNumber

            {
                Text("save number")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(hue: 0.012, saturation: 0.073, brightness: 0.749))
                    .cornerRadius(10)
                
            }
            let totalUSD = savedNumber
            let rateJPY = 144.93
            
            let budUSD = Budget(ntotal : totalUSD)
            let budJPY = Budget(ntotal : totalUSD * rateJPY)
            
            
            
            
            Text("Recommended Budget:")
            
            //4 hstacks with two text boxes for display??
            
            //food
            HStack{
                Text("Your food budget is:")
                Text("\(tFood)")
            }
            //transport
            HStack{
                Text("Your transportation budget is:")
                Text("\(tTrspt)")
            }
            //accomodations
            HStack{
                Text("Your accomodations budget is:")
                Text("\(tAccm)")
            }
            //activities
            HStack{
                Text("Your activites budget is:")
                Text("\(tActv)")
            }
            //total
            HStack{
                Text("Your total budget is:")
                Text("\(tTotal)")
            }
            Button("Convert"){
                trueFalse = !trueFalse
                if (trueFalse == false){
                    tFood = budUSD.food
                    tTrspt = budUSD.trspt
                    tAccm = budUSD.accm
                    tActv = budUSD.actv
                    tTotal = budUSD.total
                    }
                if (trueFalse == true){
                    tFood = budJPY.food
                    tTrspt = budJPY.trspt
                    tAccm = budJPY.accm
                    tActv = budJPY.actv
                    tTotal = budJPY.total
                }
            }
        }
    }
}
struct financeCalculator_Previews: PreviewProvider {
    static var previews: some View {
        financeCalculator()
    }
}
