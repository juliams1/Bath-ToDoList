//
//  BathTasksView.swift
//  OopsIDidItAgain
//
//  Created by user247327 on 23/09/23.
//

import SwiftUI

struct BathTasksView : View {
    
    @State var steps = Bathtask(title:"")
    
    @Environment(\.dismiss)
    var dismiss
    
    var mySteps: (_ steps:Bathtask) -> Void

    func addMySteps() {
        mySteps(steps)
        dismiss()
    }
    
    func cancelAddMySteps() {
        dismiss()
    }

    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $steps.title)
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: cancelAddMySteps) {
                        Image(systemName: "arrow.uturn.left")
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button(action:addMySteps) {
                        Image(systemName: "plus")
                    }
                    
                }
            }
            .scrollContentBackground(.hidden)
            .background(Image("ratimbum-mouse2").resizable())
            .background(.indigo)
        }
    }
    
    struct BathTasksView_Previews: PreviewProvider {
        static var previews: some View {
            BathTasksView { steps in
                print("🐭 - Você adicionou uma nova etapa para um banho bom!")
                
            }
        }
    }
}
