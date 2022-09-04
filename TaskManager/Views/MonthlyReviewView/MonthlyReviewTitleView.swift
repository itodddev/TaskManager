//
//  MonthlyReviewTitleView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct MonthlyReviewTitleView: View {
    var body: some View {
      HStack {
        Text("Monthly Review")
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(white)
        
        Spacer()
        
        Image(systemName: "calendar.circle")
          .font(.title2)
          .foregroundColor(white)
          .padding(7)
          .background(blue1)
          .clipShape(Circle())
      }.padding()
    }
}

struct MonthlyReviewTitleView_Previews: PreviewProvider {
    static var previews: some View {
      ZStack {
        
        purple1.ignoresSafeArea()
        
        MonthlyReviewTitleView()
      }
    }
}
