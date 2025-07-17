//
//  teste.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct teste: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            if !username.isEmpty {
                teste2(username: $username)
            }
            TextField("Username", text: $username)
        }
    }
}

struct teste2: View {
    @Binding var username: String
    
    var body: some View {
        Text("Welcome \(username)!")
    }
}


#Preview {
    teste()
}
