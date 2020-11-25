//
//  StartView.swift
//  secretingrediants
//
//  Created by Sreekanth PS on 17/11/20.
//

import Foundation
import SwiftUI

struct StartView: View {
    @State var selection: Int? = nil
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                Image("startback")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Spacer()
                    
                    VStack(alignment: .leading){
                        
                        Text("Truly, \nthe most \nauthentic recipes \nmade with 100% love")
                            .font(.custom("Poppins-Regular", size:38.0))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                        //                    Text("the most")
                        //                        .font(.custom("Poppins-Regular", size: 50.0))
                        //                        .fontWeight(.regular)
                        //                        .foregroundColor(.white)
                        //
                        //                    Text("authentic")
                        //                        .font(.custom("Poppins-Regular", size: 50.0))
                        //                        .fontWeight(.regular)
                        //                        .foregroundColor(.white)
                        //
                        //                    Text("recipes made")
                        //                        .font(.custom("Poppins-Regular", size: 50.0))
                        //                        .fontWeight(.regular)
                        //                        .foregroundColor(.white)
                        //
                        //                    Text("with 100% love")
                        //                        .font(.custom("Poppins-Regular", size: 50.0))
                        //                        .fontWeight(.regular)
                        //                        .foregroundColor(.white)
                        
                        Text("Prepare, Record & Share \nyour recipe")
                            .font(.custom("Poppins-Light", size: 25.0))
                            .foregroundColor(Color.white)
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    
                    
                    NavigationLink(destination: SiginInView(), tag: 1, selection: $selection) {
                        Button(action: {
                            self.selection = 1
                            
                        }) {
                            HStack{
                                Text("START HERE")
                                    .font(.custom("Poppins-Medium", size: 25.0))
                                    .foregroundColor(.white)
                                    .padding()
                                Spacer()
                                Image("longleftarrow")
                                    .resizable()
                                    .frame(width: 40, height: 20, alignment: .trailing)
                                    .padding()
                            }
                            
                        }.frame(width: 300, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.init("watermelon"))
                        .cornerRadius(5)
                    }
                    
                    
                }
            })}
//            VStack(alignment: .leading)
//            {
//
//                Spacer()
//
//                Text("Truly, the most authentic recipes made with 100% love")
//                    .padding(.all)
//                    .foregroundColor(Color.white)
//                    .font(.custom("Poppins-Regular", size: 50))
//                    .multilineTextAlignment(.leading)
//
//
//                Text("Prepare, Record & Share your recipe")
//                    .foregroundColor(Color.white)
//                    .font(.custom("Poppins-Regular", size: 20))
//                    .multilineTextAlignment(.leading)
//                    .padding(.all)
//
//                Spacer()
//
//                GeometryReader() { geometry in
//                    ZStack(alignment: .center){
//                        Button(action: {
//                            // your action here
//                        }) {
//                            Text("GET STARTED")
//                                .padding()
//                                .multilineTextAlignment(.leading)
//                                .foregroundColor(Color.white)
//
//                        }.background( Color("watermelon")
//                                        .frame(width: geometry.size.width * 0.90, height: 50, alignment: .center)             )
//                    }.frame(width: geometry.size.width, height: 100, alignment: .center)
//                }.padding(.bottom, 20)
//
//
//                Spacer()
//            }
     
    }
}

#if DEBUG
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
#endif
