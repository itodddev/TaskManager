//
//  ManageTasksView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct ManageTasksView: View {
  var body: some View {
    Text("Manage your daily tasks")
      .font(.largeTitle)
      .fontWeight(.bold)
      .foregroundColor(Color("darkBlue1"))
    
    Text("Team and Project management with solution providing App")
      .font(.headline)
      .fontWeight(.bold)
      .foregroundColor(Color("darkBlue1"))
  }
}

struct ManageTasksView_Previews: PreviewProvider {
    static var previews: some View {
        ManageTasksView()
    }
}
