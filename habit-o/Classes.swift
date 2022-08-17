//
//  classes.swift
//  habit-o
//
//  Created by fausto.dassenno on 13/08/22.
//

import Foundation
import SwiftUI


struct _lista: View {
  var body: some View {
    List {
        _riga(title: "Eat better", subtitle: "No junk food", symbol: "checkmark")
        _riga(title: "Exercise more", subtitle: "30 mins core training", symbol: "exclamationmark.triangle")
    }.listStyle(.plain)
  }
}


func _riga(title: String, subtitle: String, symbol: String) -> some View {
    var body: some View {
        
        HStack {
            Image(systemName: symbol)
                                .imageScale(.large)
                                .font(.title2)
                                .foregroundColor(Color(.sRGB, red: 91/255, green: 200/255, blue: 175/255))
            VStack(alignment: .leading) {
              Text(title)
                .font(.headline)
              Text(subtitle)
                .font(.subheadline)
            }
        }
        
        
    
    }
    
    return body
}

struct newForm:View {
    
    @State private var title = ""
    @State private var subtitle = ""
    @State private var duration = 0
    @State private var when = 0
    
    
    struct durations {
        static let allLocations = [
            "One week",
            "Two weeks",
            "A month",
            "2 months",
            "6 months",
            "A year"
        ]
    }
    
    struct notification_options {
        static let allLocations = [
            "In the morning",
            "At noon",
            "In the evening",
        ]
    }
    
    var body: some View {
        
        Group {
        Text("Create a new Habit").font(Font.system(.largeTitle, design: .rounded).weight(.heavy))
            .foregroundColor(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
        Spacer().frame(height: 50)
            Text("How would you describe this habit").font(Font.system(.title2, design: .rounded))
            
        TextField("Title", text: $title).padding()
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.gray)
        
        Text("Tell us more").font(Font.system(.title2, design: .rounded))
            
        TextField("Description", text: $subtitle).padding()
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.gray)
        
        
        Text("For how long").font(Font.system(.title2, design: .rounded))
            
        Picker("Favorite Color", selection: $duration, content: { // <2>
                        Text("One day").tag(1) // <3>
                        Text("One week").tag(7) // <4>
                        Text("One month").tag(30) // <5>
                        Text("Two months").tag(60) // <5>
                        Text("Six month").tag(180) // <5>
                        Text("One year").tag(365) // <5>
        })
        }
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.gray)
        
        Text("When you want to be notified").font(Font.system(.title2, design: .rounded))
        Picker("Notifiction", selection: $when, content: { // <2>
                        Text("Morning, 8am").tag(0) // <3>
                        Text("Noon").tag(1) // <4>
                        Text("Evening, 8pm").tag(2) // <5>
                        Text("Night, 11pm").tag(3) // <5>
        })
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.gray)
        
        Spacer()
        Button("Add", action: {
            print(self.duration)
        })
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
        .foregroundColor(Color.white)
        .font(Font.system(.largeTitle, design: .rounded).weight(.heavy))
        
    
    }
    
}
