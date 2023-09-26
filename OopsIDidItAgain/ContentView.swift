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
        .background(Color(red: 0.9333333333333333, green: 0.9058823529411765, blue: 0.5568627450980392))
        .scrollContentBackground(.hidden)
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
                .navigationTitle("Bath To-Do List")
        }
        
    }
}
