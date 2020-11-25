//
//  SplashView.swift
//  secretingrediants
//
//  Created by Sreekanth PS on 23/11/20.
//

import Foundation
import SwiftUI

struct SpalshView: View {
    @State private var showMainView = false
    @State private var opacityOfLogo = 0
    
    var body: some View {
        
        Group{            
            if showMainView{
                ContentView()
            }else{
                
                ZStack{
                    Color("watermelon")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Image("splashlogo")
                        .resizable()
                        .opacity(Double(self.opacityOfLogo))
                        .frame(width: 160, height: 180)
                }
                
            }
        }.onAppear{
            withAnimation(Animation.easeIn(duration: 2)){
                self.opacityOfLogo = 1
            }
            withAnimation(Animation.easeOut(duration: 1).delay(4)) {
                self.showMainView = true
            }
        }
        
    }
}

#if DEBUG
struct SpalshView_Previews: PreviewProvider {
    static var previews: some View {
        SpalshView()
    }
}
#endif
