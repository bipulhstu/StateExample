//
//  Example3.swift
//  StateExample
//
//  Created by Bipul Islam on 18/2/25.
//

import SwiftUI

// Combining Toggle and Sheets to learn State and Binding
struct Example3: View {
    
    @State private var isDarkModeEnabled: Bool = false
    @State private var showModal: Bool = false
    
    var body: some View {
        
        VStack (spacing: 24){
            Toggle(isOn: $isDarkModeEnabled) {
                Text("Dark Mode")
                    .foregroundStyle(isDarkModeEnabled ? .white : .black)
            }
            
            Button("Open Modal"){
                showModal.toggle()
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isDarkModeEnabled ? .black : .white)
        .sheet(isPresented: $showModal) {
            ModalView(dismiss: $showModal, isDarkModeEnabled: $isDarkModeEnabled)
                .presentationDetents([.medium])
        }
    }
}


// Modal
struct ModalView: View{
    
    //@Environment(\.dismiss) var dismiss
    @Binding var dismiss: Bool
    @Binding var isDarkModeEnabled: Bool
    
    var body: some View{
        VStack (spacing: 24){
            
            Toggle(isOn: $isDarkModeEnabled) {
                Text("Dark Mode")
            }
            
            
            Button("Dismiss") {
                //dismiss()
                dismiss.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    Example3()
}
