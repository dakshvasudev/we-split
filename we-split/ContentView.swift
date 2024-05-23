//
//  ContentView.swift
//  we-split
//
//  Created by daksh vasudev on 23/05/24.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry","Joe","Daksh"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select the desired student",selection: $selectedStudent){
                    ForEach(students,id: \.self){
                        Text($0)
                    }
                }
            }.navigationTitle("Select student")
        }
    }
}

#Preview {
    ContentView()
}
