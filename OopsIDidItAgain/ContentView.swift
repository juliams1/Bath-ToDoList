//
//  ContentView.swift
//  OopsIDidItAgain
//
//  Created by User on 22/09/23.
//

import SwiftUI


struct ContentView: View {
    
    
    
    @State var steps = Bathtask.Bathtasks
    @State var isBathTasksViewOn = false
    
    func showBathTasksView() {
        isBathTasksViewOn.toggle()
    }
    
    var body: some View {
        NavigationStack {
            List() {
                ForEach($steps) { $bathtask in
                    HStack {
                        Image(systemName: bathtask.isCompleted
                              ? "checkmark.circle.fill"
                              : "circle")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .onTapGesture {
                            bathtask.isCompleted.toggle()
                        }
                        TextField("", text: $bathtask.title)
                    }
                }
                .onDelete { indexSet in
                    steps.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("Bath To-Do List")
            
        }
        
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button(action: showBathTasksView) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("New Mission for your bath")
                    }
                }
            }
            
        }
        .sheet(isPresented: $isBathTasksViewOn) {
            BathTasksView { bathtask in
                steps.append(bathtask)
            }
        }
        .background(Image("ratimbum-mouse").resizable())
        .background(Image("background-mouse"))
        .scrollContentBackground(.hidden)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
