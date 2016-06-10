### UtilityApp ###

===========================================================================
DESCRIPTION:

The UtilityApp sample demonstrates how to use utility class.

===========================================================================
BUILDING A UtilityApp:

1) Import Utility class to access preprocessors defined in Utility class.
2) Open viewcontroller.m file, create two UIImageView objects using IMAGEVIEW preprocessor defined in Utility class.
3) Add autolayout to subviews for proper layout.
   1. PREPCONSTRAINTS : to set TranslatesAutoresizingMaskIntoConstraints to NO
   2. CENTER_VIEW(PARENT, VIEW): align subview to center of superview
4) Use preprocessor UTLog instead of NSLog because UTLog will work only in debugging mode.
5) Create right bar button using preprocessor BARBUTTON defined in Utility class.
6) Set background color using UTColor preprocessor.
7) 
===========================================================================
BUILD REQUIREMENTS:

iOS SDK 7.0 or later

===========================================================================
RUNTIME REQUIREMENTS:

iOS 7.0, Automatic Reference Counting (ARC)

===========================================================================
PACKAGING LIST:

Utility
- Custom Utility class representing all preprocessors.

ViewController
- Implements & shows how to swap UIImageViews where views are layout using preprocessors defined in Utility class.

Assets
- Having two pngs redflower & blueflower.
