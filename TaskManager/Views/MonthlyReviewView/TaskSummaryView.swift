//
//  TaskSummaryView.swift
//  TaskManager
//
//  Created by Todd James on 9/3/22.
//

import SwiftUI

struct TaskSummaryView: View {
    let space: CGFloat = 10
    
    var body: some View {
        let smallFactor: CGFloat = 5/12
        let bigFactor: CGFloat = 1 - smallFactor
      
        GeometryReader { geometry in
            HStack {
                Spacer()
              
                VStack {
                    SummaryItemView(numberOfTasks: 22, text: "Done", dimX: geometry.size.width / 2 - space, dimY: geometry.size.height *  bigFactor - space)
                    SummaryItemView(numberOfTasks: 10, text: "OnGoing", dimX: geometry.size.width / 2 - space, dimY: geometry.size.height  *  smallFactor - space)
                }
              
                Spacer()
              
                VStack {
                    SummaryItemView(numberOfTasks: 7, text: "In Progress", dimX: geometry.size.width / 2 - space, dimY: geometry.size.height  *  smallFactor - space)
                    SummaryItemView(numberOfTasks: 12, text: "Working for Review", dimX: geometry.size.width / 2 - space, dimY: geometry.size.height *  bigFactor - space)
                }
              
                Spacer()

            }
        }
    }
}

struct SummaryItemView: View {
  let numberOfTasks: Int
  let text: String
  let dimX: CGFloat
  let dimY: CGFloat
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 20)
        .fill(purple3)
      
      VStack(spacing: 15) {
        Text("\(numberOfTasks)")
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundColor(white)
        
        Text(text)
          .font(.caption)
          .fontWeight(.bold)
          .foregroundColor(white)
    
      }
    }
    .frame(width: dimX, height: dimY)
    //.padding()
  }
}

struct TaskSummaryView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      
      purple1.ignoresSafeArea()
      
      TaskSummaryView()
        .frame(width: 300, height: 400)
    }
  }
}
