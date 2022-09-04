//
//  CurrentTaskView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct CurrentTaskView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 7) {
        Text("Mobile App Design")
          .font(.title3)
          .fontWeight(.semibold)
          .foregroundColor(white)
        
        Text("Mike and Anita")
          .font(.headline)
          .fontWeight(.thin)
          .foregroundColor(white)
        
        HStack {
          
          let circleSize: CGFloat = 40
          
          HStack(spacing: -15) { // cause avatars to overlap
            CircleImageView(imageName: person1, color: white, size: circleSize, lineWidth: 2)
            CircleImageView(imageName: person2, color: white, size: circleSize, lineWidth: 2)
          } //: INNER INNER HSTACK
          Spacer()
          Text("Now")
            .foregroundColor(white)
        } //: INNER HSTACK
      } //: VSTACK
      
      Spacer()
    } //: HSTACK
    .padding()
    .background(purple3)
    .cornerRadius(20)
    .shadow(radius: 5)
    .padding()
  }
}

struct CurrentTaskView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      
      purple1.ignoresSafeArea()
      
      CurrentTaskView()
    }
  }
}
