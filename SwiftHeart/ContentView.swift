//
//  ContentView.swift
//  SwiftHeart
//
//  Created by Angelos Staboulis on 23/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var degrees = 0.0
    @State var scale = 0.0
    @State var timer = Timer.publish(every: 1, tolerance: .none, on: .current, in: .common, options: .none).autoconnect()
    var body: some View {
        VStack{
            Image("heart").resizable().frame(width: 100, height: 100, alignment: .center)
                .onReceive(timer) { value in
                        if scale > 2.0 {
                            scale = 0.0
                        }else{
                            scale = scale + 0.1
                        }
                    
                }.scaleEffect(scale)
                .animation(.easeInOut(duration: 1.0).delay(1.0),value: scale)
                
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
