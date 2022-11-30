//
//  ContentView.swift
//  ExampleDumbDI
//
//  Created by Markus Faßbender on 30.11.22.
//

import SwiftUI
import Profile

struct ContentView: View {

    let viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            Text("Hello, world!")

            ProfileView(viewModel: viewModel.profileViewModel)
                .padding(.vertical)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
