//
//  GettingStartedView.swift
//  TaskManager
//
//  Created by Todd James on 9/2/22.
//

import SwiftUI

struct GettingStartedView: View {
  
  var body: some View {
    NavigationView {
      ZStack {
        Background()
        VStack {
          ImageHeader()
        
          Spacer()
          
          BottomOfGettingStartedView()
        } //: OUTTER VSTACK
      } //: ZSTACK
      .navigationBarHidden(true)  // Prevents nav view from pushing down shape
    } //: NAVIGATIONVIEW
  }
}

struct GettingStartedView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      GettingStartedView()
      
      GettingStartedView()
        .preferredColorScheme(.dark)
    }
   
  }
}
