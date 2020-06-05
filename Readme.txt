
Course: MScIM


——————————
OVERVIEW
——————————

My application is a Multi View Controller application written in Swift.

The constraints and layouts have been optimised for iPhone 11 and iPhone 8. 

I have named the application ‘Countrypedia’ as I intend for it to reflect an encyclopaedia of information relating to specific countries in the world. The countries I chose were relatively random but I did go with the largest countries for tourism for europeans but not strictly. 


—————————————————————————————————-
PERSONAL TECHNICAL CONTRIBUTION
—————————————————————————————————— 

1. Multiple segue’s on a single screen
I decided that I wanted to include a currency converter screen as it seemed to coincide with my theme of general country information. I wanted the user to have this as an option rather than forcing them to go through an additional screen.  In order to achieve this, it was necessary to create 2 separate segue’s and give each a unique identifier. Then, in the assistant editor, create a conditional IF statement that states if the unique identifier is equal to one of the ID’s, then segue to that View Controller, “else” segue to the wikipedia page as is the main route. 

2. Animation
In order to build upon the additional Currency conversion screen, I wanted a means of highlighting to the user that this screen was in a sense additional. I decided to implement a pulse animation that:
	a) Pulsed without interaction from the user, and  
	b) Pulsed an infinite number of times. 

I set the pulse function in the UIViewExtensions file so that it could be called in the ViewControllers file. 

The arguments for the function were inspired by:
https://medium.com/better-programming/swift-uibutton-animations-6ce016212c6e


3. Picker View
In order to allow the user a means to select a currency, I decided to implement a picker view into the Currency Converter view controller. I created 2 arrays, one holding the strings of the currency abbreviation and the other with the exchange rates in the form of floats. I used the string array to control the number of picker view rows and their content. The float array was used in the action to do the conversion. 




—————
STYLING
—————

1. Start Screen
Additional UIViewController to act as a welcome screen fo the user to interact with before moving on to the table data. 


2. Table View Controller

While implementing the tableView controller, the table cells had no spacing between cells and this caused each country.image to visually touch the country.image of the next cell. In order to rectify this, I set the numberOfSections in the tableView to be equal to the count of the data file and set the numberOfRowsInSection to 1. Essentially creating 16 sections, each with one row. I created a float variable within the CountriesTableViewController Class and set the value to 10. I then assigned the tables heightForHeaderInSection to this float variable to create the spacing between each section. 
I gained inspiration for this via https://stackoverflow.com/questions/6216839/how-to-add-spacing-between-uitableviewcell


3. Colours

Programmatically set colours in a separate swift file containing a struct called ‘Colors’.

These were then applied to all screens with a navigation button. 
	- The application of ‘Colors’ was set during  the viewDidLoad() function by 
		1) Creating an Outlet for the button
		2) setting style attributes to layers of this outlet. 

4. Buttons
In terms of button styling, I programmed the buttons to have rounded corner radii to comply with most modern, commercial mobile applications. I applied a gradient to the colouring of the buttons also. 

In order to apply a consistent gradient style, I created an extension to the UIView in the form of a function named ‘setGradientBackground’. It is in this function that I create a ‘gradientLayer’ variable of type CAGradientLayer() and apply the frame, colours, locations and start and endpoints of the 2 gradient colours. This function is then called on each outlet button. 

5. Assets
Country Flag assets were obtained royalty free via:
https://dribbble.com/shots/1948154-Country-flags-Retail-Loyalty-Congress-2015

I imported the image set into Photoshop where I isolated each flag into individual images, then exported each flag from photoshop as a png. 

Country maps along with the data was obtained from www.wikipedia.org. 







