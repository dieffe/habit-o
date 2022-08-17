//
//  ContentView.swift
//  habit-o
//
//  Created by fausto.dassenno on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    @State private var selection: String? = nil
    @State private var title = ""
    var color_purple: Color = Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255)
    
    var body: some View {
        
    //---->
        NavigationView {
            VStack {
            Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Image(systemName: "note")
                                    .imageScale(.large)
                                    .font(.title2)
                                    .foregroundColor(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
                                Text("Habit-o")
                                    .font(Font.system(.largeTitle, design: .rounded).weight(.heavy))
                                    .foregroundColor(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
                                    .padding(10)
                            }
                        }
                    }
            //---
            //TEST
            List(students) { student in
                let uuid = UUID().uuidString
                Text(student.name ?? "Unknown")
            }
            Button("Add") {
                let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!

                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
                try? moc.save()
            }
            //TEST
            Spacer()
            _lista()
            NavigationLink(destination: newForm(), tag: "A", selection: $selection) { EmptyView() }

            //---
            Button(action: {
                selection="A"
            }) {
                Text("New Habit")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
                .background(color_purple)
                .cornerRadius(40)
                .foregroundColor(Color.white)
                .padding(10)
                .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple, lineWidth: 5)
                    )
                
                
            }
            
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
    //---->
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

