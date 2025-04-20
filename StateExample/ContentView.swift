//
//  ContentView.swift
//  StateExample
//
//  Created by Bipul Islam on 18/2/25.
//

// @State - State in SwiftUI is a property wrapper that allows you to store values that can
// change over time. When you mark a property with @State property wrapper, SwiftUI knows
// that it needs to monitor changes that property, and update any views that depend on it

// @Binding - Binding in SwiftUI is a property wrapper that allows you to create a two-way
// connection between a view and its underlying data. When you mark a property with the
// @Bindng property wrapper, you're indicating that the property's value is owned by some
// other view or object, and that your view needs to be notified when the value changes.

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0
    
    var body: some View {
        VStack (spacing: 24){
            
            Text("Count: \(count)")
            
            Button("Increment") {
                count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
