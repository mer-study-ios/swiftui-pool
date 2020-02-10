//
//  ContentView.swift
//  Bullseye
//
//  Created by jieqiong-yu on 2020/01/25.
//  Copyright © 2020 MerJQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            // Target row
            Text("Hello, MerJQ!")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            
            // Slider row
            
            // Button row
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () ->
                Alert in
                return Alert(title: Text("Hello there!"), message: Text("this is my first pop-up."), dismissButton: .default(Text("Awesome")))
            }
            
            // Score row
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
