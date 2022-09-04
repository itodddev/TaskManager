//
//  TopAvatarView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct TopAvatarView: View {
  let circleSize: CGFloat = 40
  
  var body: some View {
    HStack {
      ThreeLinesView(color: white, unitWidth: 5, unitHeight: 25, stretch: 0.4, spacing: 4)
      
      Spacer()
      
      ZStack {
        ForEach(0 ..< 7) { index in
          let factor = 2 + 1.5 * CGFloat(index)
          CircleView(color: lightPurple,
                     lineWidth: 1 / factor,
                     opacity: 2 / CGFloat(index),
                     dimension: circleSize,
                     scaleFactor: factor
          )
        }
        
        CircleImageView(imageName: person3, color: white, size: 40, lineWidth: 3)
      }
    }
    .padding()
  }
}

struct CircleView: View {
  let color: Color
  let lineWidth: CGFloat
  let opacity: CGFloat
  let dimension: CGFloat
  let scaleFactor: CGFloat
  
  var body: some View {
    Circle()
      .stroke(color.opacity(opacity), lineWidth: lineWidth)
      .frame(width: dimension, height: dimension)
      .scaleEffect(scaleFactor)
  }
}

struct ThreeLinesView: View {
  let color: Color
  let unitWidth: CGFloat
  let unitHeight: CGFloat
  let stretch: CGFloat
  let spacing: CGFloat
  
  var body: some View {
    HStack(spacing: spacing) {
      Capsule()
        .fill(color)
        .frame(width: unitWidth, height: unitHeight)
        .offset(y: unitHeight / 2 * stretch)
      
      Capsule()
        .fill(color)
        .frame(width: unitWidth, height: unitHeight)
      
      Capsule()
        .fill(color)
        .frame(width: unitWidth, height: unitHeight)
        .offset(y: -unitHeight / 2 * stretch)
    }
  }
}

struct TopAvatarView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      
      purple1.ignoresSafeArea()
      
      TopAvatarView()
    }
  }
}
