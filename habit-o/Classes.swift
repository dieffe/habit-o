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
    
    var body: some View {
        
        Text("Create a new Habit").font(Font.system(.largeTitle, design: .rounded).weight(.heavy))
            .foregroundColor(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
        Spacer().frame(height: 50)
        Text("How would you describe this habit")
        TextField("Title", text: $title).padding()
        Divider()
         .frame(height: 1)
         .padding(.horizontal, 30)
         .background(Color.gray)
        Spacer()
        Button("Add", action: {
            
        })
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color(.sRGB, red: 161/255, green: 78/255, blue: 191/255))
        .foregroundColor(Color.white)
        .font(Font.system(.largeTitle, design: .rounded).weight(.heavy))
        
    
    }
    
}
