//
//  CircleImageView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct CircleImageView: View {
  let imageName: String
  let color: Color
  let size: CGFloat
  let lineWidth: CGFloat
  
  var body: some View {
    Image(imageName)
      .resizable()
      .scaledToFill()
      .clipShape(Circle())
      .overlay(Circle().stroke(color, lineWidth: lineWidth))
      .frame(maxWidth: size, maxHeight: size)
  }
}

struct CircleImageView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      
      purple1
        .ignoresSafeArea()
      
      VStack(spacing: 20) {
        CircleImageView(imageName: person1, color: white, size: 100, lineWidth: 3)
        CircleImageView(imageName: person2, color: white, size: 100, lineWidth: 3)
        CircleImageView(imageName: person3, color: white, size: 100, lineWidth: 3)
        CircleImageView(imageName: person4, color: white, size: 100, lineWidth: 3)
      }
    }
  }
}
