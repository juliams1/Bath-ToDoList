//
//  ContentView.swift
//  OopsIDidItAgain
//
//  Created by User on 22/09/23.
//

import SwiftUI


struct ContentView: View {
    @State var steps = Bathtask.Bathtasks
    
    var body: some View {
        List($steps) { $bathtask in
            HStack {
                Section {
                    Image(systemName: bathtask.isCompleted
                          ? "checkmark.circle.fill"
                          : "circle")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .onTapGesture {
                        bathtask.isCompleted.toggle()
                    }
                    Text(bathtask.message)
                }
            }
        }
        .background(Color(red: 0.9333333333333333, green: 0.9058823529411765, blue: 0.5568627450980392))
        .scrollContentBackground(.hidden)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
