//
//  ContentView.swift
//  ElecParts
//
//  Created by Oren Leavitt on 10/4/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var items: [Item]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    VStack {
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("ElecParts")
            .toolbar {
                Button("Add samples") {
                    addSamples()
                }
            }
        }
    }
    
    func addSamples() {
        let lm741 = Item(title: "LM741", detail: "The venerable 741 op amp!")
        let lm311 = Item(title: "LM311", detail: "High speed comparator with NPN output.")
        modelContext.insert(lm741)
        modelContext.insert(lm311)
        try? modelContext.save()
    }
}

#Preview {
    ContentView()
}
