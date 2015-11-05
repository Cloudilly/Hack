#Mock App
Repository contains sample codes required to build a quick mock app that consists of just images. Great for hackathons and product demos.

Flow of app shown sequentially below. Tap anywhere on screen to move to the next view.
![Rainbow](https://github.com/Cloudilly/Images/blob/master/hack.jpg)

---

#####Instructions
To use, simply replace existing images in Assets.xcassets with your own mocks. Code has of 7 view controllers named sequentially from "OneViewController", "TwoViewController", "ThreeViewController"... to "SevenViewController". When tapped anywhere on the screen, app changes to the next view controller until the seventh. Add more empty UIViews with its own gestureRecognizer if want more complex routing.
