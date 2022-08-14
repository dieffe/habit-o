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
