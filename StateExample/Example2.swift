//
//  Example2.swift
//  StateExample
//
//  Created by Bipul Islam on 18/2/25.
//

import SwiftUI

//Parent View
struct Example2: View{
    
    @State private var name: String = ""
    
    var body: some View{
        
        VStack (spacing: 24){
           
            LoginField(text: $name)
            
            Text("Your name is: \(name)")
            
        }
        .padding()
    }
    
}


// Child View
struct LoginField: View {
    @Binding  var text: String
    
    var body: some View {
        TextField("Enter your name", text: $text)
    }
}


#Preview {
    Example2()
}
