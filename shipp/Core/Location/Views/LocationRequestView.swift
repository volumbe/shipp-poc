////
////  LocationRequestView.swift
////  shipp
////
////  Created by Vivek Olumbe on 2/11/23.
////
//
//import SwiftUI
//
//struct LocationRequestView: View {
//    @ObservedObject var locationManger = LocationManager.shared
//    
//    var body: some View {
//        ZStack {
//            Color(.systemBlue).ignoresSafeArea()
//            
//            VStack {
//                Spacer()
//                Image (systemName: "paperplane.circle.fill")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 200, height: 200)
//                    .foregroundColor(.white)
//                
//                Text ("Enable location access to explore matches nearby.")
//                    .font(.system(size: 28, weight: .semibold))
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .padding()
//                
//                Spacer()
//                
//                VStack {
//                    Button {
//                        locationManger.requestLocation()
//                    } label: {
//                        Text("Allow access")
//                            .font(.headline)
//                            .foregroundColor(Color(.systemBlue))
//                            .padding()
//                    }
//                    .frame(width: UIScreen.main.bounds.width)
//                    .padding(.horizontal, -32)
//                    .background(.white)
//                    .clipShape(Capsule())
//                    .padding()
//                    
//                    Button {
//                        print("Dismiss")
//                    } label: {
//                        Text("Maybe later")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                    }
//                }
//                .padding(.bottom, 32)
//            }
//        }
//    }
//}
//
//struct LocationRequestView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationRequestView()
//    }
//}
