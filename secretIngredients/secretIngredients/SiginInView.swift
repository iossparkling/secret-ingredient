//
//  SiginInView.swift
//  secretingrediants
//
//  Created by Sreekanth PS on 24/11/20.
//

import Foundation
import SwiftUI

struct SiginInView: View {
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        NavigationView {
//            Button("Go Back") {
//                self.presentation.wrappedValue.dismiss()
//            }
            ZStack{
                GeometryReader { geometry in
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                            Image(uiImage: UIImage.init(named: "loginPlate") ?? UIImage())
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
                                .padding(.top, 50.0)
                                .offset(x: geometry.size.width / 4, y: 0.0)
                        }
                        Spacer()
                    }
                    VStack {
                        HStack {
                            
                            Spacer()
                                .frame(width: geometry.size.width * 0.10, height: geometry.size.height / 4)
                            
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.gray)
                                .frame(width: geometry.size.width * 0.80, height: geometry.size.height * 0.40, alignment: .center)
                                .padding(.top, 80.0)
                            
                        }
                    }
                }
                
                
                }
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#if DEBUG
struct SiginInView_Previews: PreviewProvider {
    static var previews: some View {
        SiginInView()
    }
}
#endif
