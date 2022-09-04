//
//  Background.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct Background: View {
  var body: some View {
    Color("lightBlue1")
      .ignoresSafeArea()
  }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
