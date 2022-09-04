//
//  ImageHeader.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct ImageHeader: View {
  
  let imageDimX: CGFloat = 350
  let imageDimY: CGFloat = 250
  
  var body: some View {
    Image( gettingStartedImage)
      .resizable()
      .scaleEffect(2.5)
      .frame(width: imageDimX, height: imageDimY)
      .clipShape(SquareCircleShape())
      .padding()
      .scaleEffect(0.8)
    
  }
}

struct ImageHeader_Previews: PreviewProvider {
  static var previews: some View {
    ImageHeader()
  }
}
