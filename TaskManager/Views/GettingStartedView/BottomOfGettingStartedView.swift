//
//  BottomOfGettingStartedView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct BottomOfGettingStartedView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 30) {
      
     ManageTasksView()
      
     StartActionView()
      
    }
    .padding()
  }
}

struct BottomOfGettingStartedView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOfGettingStartedView()
    }
}
