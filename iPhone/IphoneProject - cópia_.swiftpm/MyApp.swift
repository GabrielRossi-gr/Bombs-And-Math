


import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                //SecondView()
                SecondView()
                //FirstView()
            }.navigationViewStyle(.stack)
            
        }
    }
}
