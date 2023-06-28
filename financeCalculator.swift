//
//  financeCalculator.swift
//  boatDuck
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct financeCalculator: View {
    @State private var code = ""
    @State private var savedNumber = Int()
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack{
            TextField("Enter your total budget in USD:", text : $code)
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.pink)
                .multilineTextAlignment(.center)
                .frame(width:300,height:40)
            
            Button(action:{
                if let integerValue = Int(code){
                    savedNumber = integerValue
                }
                code = ""
                var newNumber = savedNumber
                    
            })
            {
                Text("save number")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            //string to num
            
        }
    }
}

struct financeCalculator_Previews: PreviewProvider {
    static var previews: some View {
        financeCalculator()
    }
}
