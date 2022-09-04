//
//  MonthlyReviewView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct MonthlyReviewView: View {
  var body: some View {
    ZStack {
      LinearGradient(colors: [lightPurple, purple1], startPoint: .topLeading, endPoint: .bottomTrailing)
        .ignoresSafeArea()
      
      VStack {
        
        TopAvatarView()
        
        TitleView()
        
        CurrentTaskView()
        
        MonthlyReviewTitleView()
        
        TaskSummaryView()
          
        
        Spacer()
      } //: OUTER VSTACK
    } //: ZSTACK
  }
}

struct MonthlyReviewView_Previews: PreviewProvider {
  static var previews: some View {
    MonthlyReviewView()
  }
}
