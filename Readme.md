## Convert SVG curve data to NSBezierCurve instructions

This project is a one-off tool that I'm using for a bigger project that draws a lot of curves. I'm needed some curve data so I grabbed some [SVG drawing instructions](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Paths) and parsed them into [NSBezierPath](https://developer.apple.com/documentation/appkit/nsbezierpath) instructions.

If you want to use this, great! But know that it's pretty lacking in features and was developed by me for this very specific purpose. For example, it doesn't support most SVG path instructions such as `H`, `V`, `S`, `Q`, `T`, or `A`.

Also, this won't parse anything but the raw path instructions. It doesn't know what to do with a full SVG/XML document. You can see an example of the input it needs in the Fixtures directory.

Made by [Edward Loveall](https://edwardloveall.com)
