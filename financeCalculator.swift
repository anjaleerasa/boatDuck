//
//  financeCalculator.swift
//  boatDuck
//
//  Created by Scholar on 6/27/23.
//WOAHSHS
//this is not a comment

import SwiftUI

struct financeCalculator: View {
    @State private var code = ""
    @State private var savedNumber = Double()
    @State public var tFood = Double()
    @State public var tTrspt = Double()
    @State public var tAccm = Double()
    @State public var tActv = Double()
    @State public var tTotal = Double()
    @State public var trueFalse = false
    @State public var currency = "$"
    
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ZStack{
            Color("calc")
                .ignoresSafeArea()
            VStack{
                TextField("Enter your total budget in USD:", text : $code)
                    .textContentType(.oneTimeCode)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                    .multilineTextAlignment(.center)
                    .frame(width:300,height:40)
                Text("       ")
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
                    Text("Calculate my budget!")
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
                Text("           ")
                Text("Recommended Budget: \(currency)")
                    .font(.headline)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                Text("                 ")
                
                //4 hstacks with two text boxes for display??
                
                //food
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Total budget:")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Text("             ")
                        Text("Food budget:")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Text("Transportation budget:")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Text("Accomodations budget:")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        Text("Activities budget:")
                            .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .multilineTextAlignment(.leading)
                    }
                    VStack{
                        Text("\(currency)\(tTotal)")
                            .font(.headline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                        Text("           ")
                        Text("\(currency)\(tFood)")
                            .font(.headline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                        Text("\(currency)\(tTrspt)")
                            .font(.headline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                        Text("\(currency)\(tAccm)")
                            .font(.headline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                        Text("\(currency)\(tActv)")
                            .font(.headline)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.407, brightness: 0.565))
                    }
                }
                Text("               ")
                Button("Convert to JPY/USD"){
                    
                    trueFalse = !trueFalse
                    if (trueFalse == false){
                        currency = "$"
                        tFood = budUSD.food
                        tTrspt = budUSD.trspt
                        tAccm = budUSD.accm
                        tActv = budUSD.actv
                        tTotal = budUSD.total
                    }
                    if (trueFalse == true){
                        currency = "¥"
                        tFood = budJPY.food
                        tTrspt = budJPY.trspt
                        tAccm = budJPY.accm
                        tActv = budJPY.actv
                        tTotal = budJPY.total
                    }
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color(hue: 0.012, saturation: 0.073, brightness: 0.749))
                .cornerRadius(10)
               
            }
        }
    }
}
struct financeCalculator_Previews: PreviewProvider {
    static var previews: some View {
        financeCalculator()
    }
}
