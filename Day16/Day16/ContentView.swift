//
//  ContentView.swift
//  Day16
//
//  Created by Manuel Cubillo on 5/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermonie", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack {
            Form {
//                Section {
//                    Text("Hello World")
//                }
//                Section {
//                    Text("Hello World")
//                    Text("Hello World")
//                    Text("Hello World")
//                }
//                Section {
//                    Button("Tap Count: \(tapCount)") {
//                        tapCount += 1
//                    }
//                }
                
//                TextField("Enter your name", text: $name)
//                Text("Hello World \(name)")
                
                    Picker("Select your students", selection:$selectedStudent){
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }
                    
                }
                .navigationTitle("Swift UI")
                .navigationBarTitleDisplayMode(.automatic)
            }
        }
}

#Preview {
    ContentView()
}
