//
//  GettingStartedView.swift
//  TaskManager
//
//  Created by Todd James on 9/2/22.
//

import SwiftUI

struct GettingStartedView: View {
  
  
  
  var body: some View {
    ZStack {
      
      Background()
      
      VStack {
        
        ImageHeader()
        
        Spacer()
        
        BottomOfGettingStartedView()
        
      } //: OUTTER VSTACK
    } //: ZSTACK
  }
}

struct ImageHeader: View {
  
  let imageDim: CGFloat = 250
  
  var body: some View {
    Image(gettingStartedImage)
      .resizable()
      .frame(width: imageDim, height: imageDim)
      .clipShape(RoundedRectangle(cornerRadius: 30))
      .padding()
  }
}

struct GetStartedView: View {
  var body: some View {
    ZStack {
      Circle()
        .fill(Color("white"))
        .frame(width: 70, height: 70)
        .offset(x: -50)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 5, y: 5)
      
      Text("Get Started")
        .font(.title3)
        .fontWeight(.heavy)
        .foregroundColor(Color("darkBlue1"))
    }
    .padding()
  }
}

struct ManageTasksTextView: View {
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

struct BottomOfGettingStartedView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 30) {
      
      ManageTasksTextView()
      
      GetStartedView()
      
    }
    .padding()
  }
}

struct Background: View {
  var body: some View {
    Color("lightBlue1")
      .ignoresSafeArea()
  }
}

struct GettingStartedView_Previews: PreviewProvider {
  static var previews: some View {
    GettingStartedView()
  }
}
