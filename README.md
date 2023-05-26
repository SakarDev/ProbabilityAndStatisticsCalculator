# Probability And Statistics Calculator

This MATLAB repository is a simple GUI (Graphical User Interface) calculator that allows the user to perform different statistical operations like calculating mean, median, mode, standard deviation, variance, coefficient of variance, interquartile range, and range on a set of numbers (a vector).

**Note: This calculator has been designed specifically for educational purposes.. It's a MATLAB project for the Probability and Statistics course at Software Engineering of Koya University. It effectively showcases the application of learned statistical methods using MATLAB.**

![Showcasing the Caculator ](https://raw.githubusercontent.com/SakarDev/ProbabilityAndStatisticsCalculator/master/probStatisticsCalculator.gif)


## Functionality:
It allows users to input a series of numbers and then calculate various statistical measures of that series. The GUI presumably has a number pad for entering numbers, as well as buttons for each of the available statistical operations, a button to add a number to the vector, and a button to clear the inputs and outputs.


- The ProbabilityCalculator function sets up the state of the GUI and handles the setup of the GUI callbacks. The GUI's state contains details about the GUI's name, Singleton status, opening and output functions, and layout function.
- Each button press in the GUI has an associated callback function. Callback functions are executed when the corresponding event occurs. For instance, when a button is clicked, the corresponding callback function is executed.
- The user inputs numbers using the GUI's number buttons (0 to 9 and decimal point). These numbers are concatenated to form the vector components. The 'Next' button adds the entered number to the vector. The next_Callback function handles this, appending the input to a global variable Vector and clearing the input field for the next entry.
- Different statistics of the vector can then be computed using the relevant buttons. For example, the mean_Callback function calculates the mean of the vector and displays it, stdDeviation_Callback calculates the standard deviation, variance_Callback calculates the variance, etc. All these functions use built-in MATLAB functions like mean, std, var, etc., to compute the statistics.
- The clear_Callback function clears the input, the output, and the vector, effectively resetting the calculator for a new calculation. When the GUI is closed, the figure1_CloseRequestFcn function is called, which also clears the global variable Vector.
