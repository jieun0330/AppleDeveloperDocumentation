//
//  List03.swift
//  List
//
//  Created by 박지은 on 2023/11/02.
//

import SwiftUI

// Hashable: 이 프로토콜은 set이나 dictionaryd에서 쓸 수 있다
struct Ocean: Identifiable, Hashable {
    let id = UUID()
    let name: String
}

private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Indian"),
    Ocean(name: "Southern"),
    Ocean(name: "Arctic")
]

struct List03: View {
    
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        
        NavigationView {
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Oceans")
            .toolbar { EditButton() }
        }
        Text("\(multiSelection.count) selections")
    }
}



