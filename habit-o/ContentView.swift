//
//  ContentView.swift
//  habit-o
//
//  Created by fausto.dassenno on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil
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
            Spacer()
            _lista()
            NavigationLink(destination: Text("View A"), tag: "A", selection: $selection) { EmptyView() }

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

