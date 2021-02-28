//
//  Home.swift
//  UI-136
//
//  Created by にゃんにゃん丸 on 2021/02/28.
//

import SwiftUI

struct Home: View {
    
    @State var fileteritems = [
        fileteritem(name: "A", check: false),
        fileteritem(name: "B", check: false),
        fileteritem(name: "C", check: false),
        fileteritem(name: "D", check: false),
        fileteritem(name: "E", check: false),




        

    ]
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    @State var show = false
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
            
            MapView()
                .ignoresSafeArea()
            
            HStack{
                Button(action: {
                    
                    withAnimation{
                        show.toggle()
                    }
                    
                }, label: {
                    Image(systemName: "slider.vertical.3")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.vertical,10)
                        .padding(.horizontal,10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: -5, y: -5)
                })
                Spacer()
                
                
                NavigationLink(
                    destination: LottieMain(),
                    label: {
                        
                        Image(systemName: "gear")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                            .padding(.horizontal,10)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: -5, y: -5)
                        
                    })
                
                
                    
               
            }
            .padding(.top,15)
            .padding(.horizontal)
            
            
            
            
            VStack{
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        
                        Text("Search")
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        
                        Button(action: {
                            
                            withAnimation{
                                show.toggle()
                            }
                            
                        }, label: {
                            Text("Done")
                                .font(.title2)
                                .fontWeight(.heavy)
                        })
                        
                        
                        
                    }
                    .padding([.horizontal,.top])
                    .padding(.bottom,10)
                    
                    
                    ForEach(fileteritems){filter in
                        
                       Card(filter: filter)
                        
                        
                    }
                    
                }
                .padding(.bottom)
                .padding(.bottom,edges?.bottom)
                .background(Color.white.clipShape(CustomShape()))
                .offset(y: show ? 0 : UIScreen.main.bounds.height / 2)
            }
            .ignoresSafeArea()
            .background(
                
                Color.black.opacity(0.15).ignoresSafeArea()
                    .opacity(show ? 1 : 0)
                    .onTapGesture {
                        withAnimation{
                            show.toggle()
                        }
                    }
            
            
            )
           
            
        })
        .navigationBarTitle("Map")
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct Card : View {
    
    @State var filter : fileteritem
    var body: some View{
        
        HStack{
            
            Text(filter.name)
                .font(.title)
                .fontWeight(.semibold)
                
            
            Spacer()
            
            ZStack{
                
                Circle()
                    .stroke(filter.check ? Color.green : Color.gray,lineWidth: 1.5)
                    .frame(width: 25, height: 25)
                
                if filter.check{
                    
                   Image(systemName: "checkmark.circle.fill")
                    
                    .font(.system(size: 25))
                    .foregroundColor(.green)
                    
                    
                }
                
                
            }
           
                
            
        }
        .padding(.horizontal)
        .contentShape(Rectangle())
        .onTapGesture {
            filter.check.toggle()
        }
        
        
        
        
    }
}

struct fileteritem : Identifiable {
    var id = UUID().uuidString
    var name : String
    var check : Bool
}



struct CustomShape : Shape{
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 30, height: 30))
        
        return Path(path.cgPath)
    }
}
