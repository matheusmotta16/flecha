//
//  ContentView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var username: String = ""
//    var nomeTeste = "nome"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
//                VStack {
//                    if !name.isEmpty {
//
//                            Text("Welcome \(name)!")
//                            TextField("name", text: $name)
//                        
//                    }
//                }
                NameScreen(/*nomeTest: nomeTeste*/)
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
