# SwiftUIPractice

Just trying out swift UI by going over the apple documentation 
Using three different view and ultimately combining them together in a single view

## Some Codes 
```swift 
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            StupaImage()
                .offset(y: -130) // moves image upward
                .padding(.bottom, -130) // from bottom of the view
            
            VStack(alignment: .leading) {
                Text("Boudha Stupa")
                    .font(.title)
                    .foregroundColor(.black)
                HStack {
                    Text("Kathmandu")
                        .font(.subheadline)
                    Spacer() // creates space and pushes them to the oppsite side of the screen
                    Text("Nepal")
                        .font(.subheadline)
                }
            }
            .padding() // gives label more space
            Spacer() // pushes it up
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

## Map
![Map Image](Assets/map.png)

## Image 
![Stupa Image](Assets/image.png)

## Final
![Final Image](Assets/final.png)


