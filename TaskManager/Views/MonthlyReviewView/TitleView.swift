//
//  TitleView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct TitleView: View {
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 7) {
        Text("Hi Todd")
          .font(.title)
          .fontWeight(.semibold)
          .foregroundColor(white)
        
        Text("6 Tasks are pending")
          .font(.headline)
          .fontWeight(.thin)
          .foregroundColor(white)
      } //: VSTACK
      Spacer()
    } //: HSTACK
    .padding()
  }
}

struct TitleView_Previews: PreviewProvider {
  static var previews: some View {
    TitleView()
  }
}
