//
//  ContentView.swift
//  Anonymous
//
//  Created by mayank on 03/12/22.
//

import SwiftUI

struct ContentView: View {
    var arrImage = ["Picture", "Picture1", "Picture2", "Picture3"]
    var body: some View {
        
        NavigationView {
            List(arrImage, id: \.self) { image in
                VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                    Text("Hello, world!")
                        .padding()
                }
            }.navigationBarTitle("Gallary", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
