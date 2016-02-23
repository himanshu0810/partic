class QtpController < ApplicationController
	
	def qtpintroduction
		@title= "Introduction to Quick Test Professional"
		@next="recordingwaysandrunmodes"
	@article='Quick Test Professional aka QTP

HP QuickTest Professional (QTP) provides functional and regression test automation for software applications and environments. QTP runs on Windows OS and not on Linux, MAC OS. 

QTP uses vbscript as its scripting language. It is easy to use due to its simple interface and the flow of steps in code (expert view) and step wise view (keyword view).

QTP also provides different types of record and playback option which enables a user with no coding experience to create and execute tests.

Integration with other HP products like Test management tool HP Quality center is also key in this being a wonderful automation tool. Test management becomes easy as the automated tests and QTP can directly update results in test scripts in QC.

A detailed and good looking results viewer enables the user to gather, understand, analyze and store results which could be quickly reviewed and even played back in a later point in time.

Now a few challenges while building your framework in HP QTP are as follows, 

A high cost is associated with HP Quicktest Professional license. So if the project is a huge one, its better getting a concurrent license.

QTP doesn’t support the latest browser versions, there is always a lag in the latest browser in the market to be supported by HP QTP.

The resource utilization (CPU & Memory) is considerably high in QTP. 

Latest Version Available : Unified Functional Testing 12.01
UFT 12.01 was released in July 2014 and its Key Features are : 
Official support for Windows 8.1
Support for Safari on Mac OS is now out of Tech Preview and available for production environment
Chrome extension for UFT is available in Chrome Store from now on
Better documentation
Support for windows run time objects
UFT 12.01 is the latest version available in the market as of August 2014.


Add Ins in QTP

Default Support 

  1. Standard Windows applications (default)
  2. Web objects / Applications
  3. ActiveX controls
  4. Visual Basic applications

Additional QuickTest add-ins 

  1. Java 
  2. Oracle 
  3. SAP 
  4. .NET 
  5. Web Forms 
  6. Siebel 
  7. PeopleSoft 
  8. Web services 
  9. Main frame (Terminal Emulator)

Note: Multiple patches are available for browser and application support. These patches will allow QTP to identify objects and enable automation for other applications and versions.

License Types

Seat License is individual license which could be purchased and used by a single user. When the number of users who require the license simultaneously is high, seat license is not preferred.

Concurrent License is a network based license which can be accessed by multiple users simultaneously. Concurrent license is preferred by organizations implementing testing services

Version History of QTP Releases
'.html_safe
	end

	def recordingwaysandrunmodes 
		@previous="qtpintroduction"
		@next="debugginganditsoptions"
		@title= "Recording Ways and Run Modes"
			@article='Recording Types in QTP
Normal Recording
Analog Recording
Low Level Recording
Normal Recording
Normal recording mode records the objects and the operations performed in the application. 
This mode is the default and takes full advantage of QuickTest\'s test object model, recognizing the objects with its key properties in your application regardless of their location on the screen. 
Analog Recording 
This type of recording enables to record the exact mouse and keyboard operations you perform in relation to either the screen or the application window.
Analog Recording Settings Dialog Box consists of the two operands;
Record relative to the screen: Records all mouse movement or keyboard input on all windows in the screen
Record relative to the window: Records any mouse movement or keyboard input relative to the coordinates of the specified window.
Low Level Recording
Used when test objective pertains to the specific object location. Useful for objects where exact co-ordinates are required and it records objects as windows test objects.
This type of recording enables to record on any object in the application, whether or not Quick Test recognizes the specific object or the specific operation. 
It should be used when the environment or the object is not recognized by QTP / if the exact coordinates of the object are important for your test or component.

Run Modes in QTP

There are two modes of running the scripts in QTP namely

Normal

Fast

Normal mode uses the execution arrow in both the Keyword and Expert view marking the each step or statement performed.

It takes more time to execute each step. Very helpful in debugging the execution.

Fast Mode does not use the execution arrow to run the test or component in either Keyword View or Expert View and does not expand the item tree or display the script of each action as it runs.

Faster execution guaranteed than normal mode.


Record and Run settings

Record and Run Settings is launched when we record a new test, a dialog called Record & Run Settings is opened. User can also access this from Automation option.

The tabs in this dialog depends upon the number of add ins selected while opening up QTP.

You can customize the settings in the dialog for example in Web settings you can increase or decrease load time of a webpage depending upon the speed of network.

Windows Application Tab: There are two radio buttons, 

QTP records and run test on any application 
QTP records and run test on specific applications

Web Tab: It also has two radio buttons, 

QTP records and run test on application opened on any browser 
QTP records and runs tests by opening application in a new browser of the specified type.


When should I use record & run?


When the scripts and coverage is less, recording holds best as the maintenance is very less.

Ideal for smaller releases

Consider a scenario where the testing team is relatively new to automation and an expert is not available. The ideal way to go forward is a record and run method.

If an enhanced automation framework is not required it implicates recording will be ideal.

'.html_safe
render "qtp/qtpintroduction"
	end

	def debugginganditsoptions
		@title= "Debugging and Its Options"
		@previous="recordingwaysandrunmodes"
		@next="objectspropertiestypes"
	@article='	Debugging Options

Pause: Exactly, it pauses the run. You can validate for state of objects, and values in variable immediately. It is also used to suspend the run. Press F5 to resume the test run.
Step Into: We can use Debug>Step Into or Press F11 or click on Step into button. Step Into lets us debug in the function called in script and run each step line by line in the function.
Step Over: It steps over, debugs line by line in a script, but instead of debugging a function called within script, it executes the function as a step and moves to next step in the Test. Step Over using F10 Key.
Step Out: Used to step out of a function. Step Out using shift + F11 Key.
Run To Step: This is an option to define the endpoint of your run. The code will run from beginning and stop at the point you define. Use Ctrl +F10 to do this.

Debug from Step : This is an option to define the start point of your debug. The code will run from this point and stop at the script end line.

Break Points are handy in QTP:
Break points are mainly used in one or many areas in test by just clicking the left margin which indicates a pause at that line of code. They are applicable only to the current Quick Test session and are not saved with the tests. Its like a predefined pause.

Debug Viewer Contains 3 Tabs:
Watch Tab is used to view the value of any variable or an expression in the test. 
Variables Tab shows the current value of variables in the test. This can be modified by the user too.
Command tab is used to execute a line of script to set or modify the current value of a variable or VBScript object in your test or function library.

Other Means to Debug A Code/Test

Use of Message Box statements

Usage of Reporter

Print statements

Use of Message Box statement is ideal for small code snippets. MsgBox statements can popup a message box to display the value of the variable you want to print. 

It also helps to use message boxes to know whether we are actually entering a condition statement like If or While. 

Ideal for checking where the exact code is breaking and what value causes it to do so

Usage of Reporter is ideal if the test is large/complicated and we want to verify multiple variables / want to display certain useful information which helps in debugging, we can use the Reporter.ReportEvent statement. 

For informational purpose we will use Reporter.ReportEvent micDone, "Info”,” Entered loop". 

We can use micPass and micFail for updating the results file directly which is also used to validate the timings.

Print statement is a very useful command in QTP. Print "Message" once used in a code, a log window will popup during your execution but remember that this log window will not hinder your execution like a MsgBox. 

Multiple print statements can help you see all the messages that you want to print in the log window without interrupting your execution. 

It could be called as a 1 Up to MsgBox.


Watch is a debug feature which is ignored but is very cool. Watch could be compared as retrieving run time values at that moment of time. 

Select the variable and press Ctrl+T or Debug->Add to Watch. 

A Debug window will appear now and the variable you wanted to "watch" would be added to the list. 

The value would be listed alongside as per the variable\'s current value in the execution. 

For those who are new 

Why Debugging , QTP is simple to understand and easy to code so it will keep you involved and you might record some piece of code, write on your own and also get some pre written code from the web.

Now you have a code that runs for one set of values – you have now assembled a code by various means.

What if this piece of code fails for certain negative conditions, here comes the power of debug.

Instead of reading the code from line 1 to line N, just use any of the above mechanisms to get to the root cause of the issue'.html_safe
render "qtp/qtpintroduction"
	end

	def objectspropertiestypes
		@title= "Object Properties And Types"
		@previous="debugginganditsoptions"
		@next="vbscript"
		@article='Object model is a structural representation of software objects that comprise the implementation of a system or application. It defines a set of classes and interfaces, together with their properties, methods and events, and their relationships. 

Test Object is used by QTP to represent an object in the application. It can consist of one or more methods or properties. These objects are identified through a number of identification properties.

QTP supports these test objects namely,

Standard Windows Object 
ActiveX Objects 
Visual Basic Objects 
Web Objects 
Utility Objects 
Supplemental Objects


Object Repository is a collection of object and properties with which QTP will be able to recognize the objects and act on it. When a user records a test, the objects and its properties are captured by default. 

Why Object Repository?

Separates physical attributes from the test scripts resulting is simple test scripts
Enables efficient object identification
Allows a user to rename and store objects in application 
Provides the connection between Names and physical attributes
Maintainability – Easy to maintain as the repository is separate from the code
Readability of scripts is improved with the usage of Names
Portability – use the same script with different Object Repository for each platform


A user could add more objects to a repository, delete objects from an existing repository or even modify the properties of an object in a repository.

There are two types of Object Repository

Local Object Repository

Shared/Global Object Repository

A local object repository is the default repository associated with an action. Local object repository could only be used by that particular action and not by other actions in the test. To make an object global means it could be accessed anywhere from the test.

A global object repository is always preferred to be used in wider test frameworks as it is easy to maintain and reuse.

A local object repository is saved with a file extension .bdb where as global one has an extension .tsr. The tsr file is a stand alone file and can be edited and shared efficiently.


Object Spy is an absolutely superb feature of QTP which have the ability to spy any object on the test application and retrieve its properties. It can be defined as an option within QTP to add objects to the Object Repository. 

The Object Spy enables you to view both the run-time object methods and the test object methods associated with an object and to view the syntax for a selected method. You use the Object Spy pointer to point to an object. 

The Object Spy displays the object hierarchy tree and the run-time object methods or test object methods associated with the selected object in the Methods tab of the Object Spy dialog box.  

Important functions in VBScript related to objects and its properties

GetROProperty

GetROProperty is an in-built method used to retrieve runtime value of an object property.
There are 4 steps involved in using the GetROProperty
Record the Object on which you want to use the GetROProperty in Object Repository
For the recorded object identify the run-time property which could be used. You may use Object Spy.
Use this method to retrieve the identified Run-time property and store the value in a variable
Here is the value for further deductions
SetTOProperty & GetTOProperty
When the test is run QTP creates a copy of this object  called Test Object and compares it with the Run Time Object
GetTOProperty enables you to retrieve the value of a property of Test Object
SetTOProperty enables you to assign a value to a test object property.

Sample Code
MsgBox Browser("Browser").Page("HomePage").WebEdit ("UserName").GetROProperty("text")'.html_safe
render "qtp/qtpintroduction"
	end

	def vbscript
		@title="VBScript"
		@previous="objectspropertiestypes"
		@next="actionsfunctions"
		@article='QTP uses VB script as its coding language so this page will give you a quick crash course on vbscript.

VBScript is a subset of Visual Basic 4.0 language developed by Microsoft to provide more processing power to Web pages. VBS is very well used to write both server side and client side scripting. The key advantage is it being fast, portable and very light.

Data Types

VBScript supports only one data type called ‘Variant’. 
The variant data type is a special kind of data type that can contain different kinds of information and is the default data type returned by all functions in VBScript. 
A variant behaves as a number when it is used in a numeric context and as a string when used in a string context.
Subtypes of data that a variant can contain: 
Empty, Boolean, Integer, Long, Single, Byte, Double, Date Time, string, Object, Error.

Variable is a placeholder that refers to a memory location that stores program information that may change at run time. 

Referred to by its name for accessing the value stored or to modify its value

Variables are explicitly declared in the script using:

Dim Statement
Public statement
Private statement

Constant is a meaningful name that takes the place of a number or a string, and never changes. VBScript in itself has a number of defined intrinsic constants like vbOK, vbCancel, vbTrue, vbFalse and so on.

The Const statement is used to create constants and is public by default

Conditional Constructs execute statements or repeat certain set of statements based on conditions.

If – Then –Else is used to evaluate whether a condition is true or false and depending on the result, to specify one or more statements to execute. 

Select Case is an alternative to If Then Else for selectively executing one block of statements from among multiple blocks of statements.  

Iterative Constructs allows to run a group of statements repeatedly. The loop is repeated based on a condition. The loop runs as long as the condition is true.

Do – Loop 

While – Wend

For - Next  Loop


A simple code snippet to open some applications using vbs in qtp


#Code to open Internet Explorer : 

SystemUtil.Run "iexplore.exe" 

#Code to Open Notepad : 

SystemUtil.Run "notepad.exe" 

#Code to Open LearnPanda : 

SystemUtil.Run "http://learnpanda.com" 


List of Functions


'.html_safe
render "qtp/qtpintroduction"
	end

	def actionsfunctions
		@title= "Actions & Functions"
		@previous="vbscript"
		@next="datatableparameterization"
		@article='Actions are a set of logical statements to perform specific test. Every QTP test opens with the default action. 

For example consider a code to open google.com, log into gmail, log out and then close the browser. This test could be logically divided to 4 actions namely,

Action 1 : Open Google
Action 2 : LogIn Gmail
Action 3 : LogOut Gmail
Action 4: Close Broser


Types of Actions

Non Reusable action is an action that can be called only in the test with which it is stored, and can be called only once.

Reusable action is an action that can be called multiple times by the test with which it is stored (the local test) as well as by other tests.

External action is a reusable action stored with another test. External actions are read-only in the calling test, but you can choose to use a local, editable copy of the Data Table information for the external action.

VBS code to call an action (without parameters)

RunAction "Login Gmail", oneIteration

Operations in Actions:

Create an Action: You can create any number of actions based on the complexity of the framework by clicking insert -> call to new action

Rename Actions:  Rename existing actions by selecting it from action dropbox, right click and rename

Call an Action: This is to call an existing action, you can do this by code or by insert -> call to existing action

Copy an Action:  To copy an action insert -> call to copy of action which is editable 
Make an Action Reusable: Change action reusability in Action Properties

Delete Actions: Right clisk on the action and delete it. Make sure you cross validate the code for dependencies
 QTP Functions and Function Libraries:

A user-defined function encapsulates activities or steps that require programming into operations (or keywords). These operations can then be used to enhance your test or component.


User defined functions helps in:

Modularity of Code
Reusability


QTP allows creating two types of user defined functions 


Associated to a test object 

QTP allows registering a function and associating with a test object.  It is also possible to set that operation as the default operation for the selected test object. 

Global 

When a function is not associated with any test object, then it is termed as Global Functions. 

Global functions can be called by selecting the Functions category in the Step Generator.


Scope of a QTP Function

Public: 

Public functions are those which can be called /accessed from multiple tests or components.  

To make a function public, the function should be defined and saved in the function library file.  

Private: 

Private functions are those that are defined in that action using the Expert View. 

They cannot be called from another action. 	

Function Definition Generator

Quick Test provides a Function Definition Generator, which enables to generate definitions for new user-defined functions and add header information to them. 

It also facilitates in the Function Definition Generator to register a function to a test object. After filling the required information, the Function Definition Generator creates the basic function definition for the user. 

The function definition can be then copied to a library file and associate it with the test or component of the definition can be directly copied to a test script.  

The Function Definition Generator can be invoked from Start -> Programs -> QuickTest Professional -> Tools -> Function Definition Generator.'.html_safe
render "qtp/qtpintroduction"
	end

	def datatableparameterization
		@title= "Datatable Parameterization"
		@previous="actionsfunctions"
		@next="checkpoints"
		@article='Datatable is a smartly used excel sheet inside QTP which enables a user to store test data, retrieve in the program and store test results. If there are n actions in a QTP test, there would be n+1 datatables in the test. The 1 is the global data sheet which decides how many iterations the test should run.

Every action has an associated local data sheet too.

Local Data Table: Each action has its own private data table also known as local data table which is can also be accessed across actions.

Global Data Table: Each test has one global data sheet that is accessible across actions.

The datasheet will populate run time values and these values witll be stored in the results folder. Do remember that these are run time values and therefore not stored in the test itself.

Parameterization

Parameterization is the practice of providing different test data through the same code to test various conditions with the same application but different data.

Types of parameterization in QTP

The variable value can be or the parameter types can be:

Data Table parameters

Test/Action parameters

Environment variable parameters

Random number parameters


Example: If I have to test 5 pairs of username and password of which 3 are correct and 2 are wrong and I would want to get it tested.

Here I use Data table parameterization with 5 usernames and 5 passwords and feed it into Global Data sheet and in the third column I would wish to see the result

These are placed in global data sheet because I need 5 iterations of the same code to run.

The result of the operation would be written back to the data sheet in the Result Tab.




.


Add Sheet : To “add” one new sheet to the run time data table.

Syntax: DataTable.AddSheet "sheet name"

Delete Sheet: To “delete” one specified sheet from the Run Time Data table.

Syntax: datatable.DeleteSheet (Sheet_ID)

GetSheetCount : To count number of sheets in the run time data table.

Syntax: datatable.GetSheetCount

GetRowCount : To count number of rows in the 1st sheet (longest column) of the Run time data table.

Syntax: datatable.GetRowCount

GetSheet : To return a specified sheet from the Run Time data table.

Syntax: datatable.GetSheet(SheetID)

Value : To set or get value of cell in the specified parameter and the current row of the Rum time data table.

Set data

Syntax: datatable.Value(Parameter_Name, Sheet_Name) = Value / variable Or

datatable(Parameter_Name, Sheet_Name) = Value / variable

Get data

Syntax: Variable = datatable.Value(Parameter_Name, Sheet_Name) Or

Variable = datatable(Parameter_Name, Sheet_Name)

Add Sheet : To “add” one new sheet to the run time data table.

Syntax: DataTable.AddSheet "sheet name"

Delete Sheet: To “delete” one specified sheet from the Run Time Data table.

Syntax: datatable.DeleteSheet (Sheet_ID)

GetSheetCount : To count number of sheets in the run time data table.

Syntax: datatable.GetSheetCount

GetRowCount : To count number of rows in the 1st sheet (longest column) of the Run time data table.

Syntax: datatable.GetRowCount

GetSheet : To return a specified sheet from the Run Time data table.

Syntax: datatable.GetSheet(SheetID)

SetCurrentRow : We can use this method to take a specified row as current row in the Run Time Datatable (By default it is 1st Row of 1st Sheet)

Syntax: datatable.SetCurrentRow(Row_Number)

SetNextRow : We can use this method to take the row after the current Row as New Current Row in the Run time data table.

Syntax: datatable.SetNextRow

SetPrevRow : We can use this method to take the row before the current Row as New Current Row in the Run time data table.

Syntax: datatable.SetPrevRow

Import : We can use this method to import Microsoft Excel File to the Runtime Data Table (Including all sheets)

Syntax: datatable.Import “Path of File”

ImportSheet : We can use this method to import a specified sheet of Microsoft Excel Sheet to the Runtime Data table.

Syntax: datatable.ImportSheet “Path of File”, “Source Sheet”, “Destination Sheet”

Export : We can use this method to export a copy of Run Time Data table to another location (Including all sheets)

Syntax: datatable.Export “Path of File”'.html_safe
render "qtp/qtpintroduction"
	end

	def checkpoints
		@title= "CheckPoints"
		@previous="datatableparameterization"
		@next="smartidentificationsynchronization"
		@article='Checkpoint is a validation point that could be inserted in a QTP test that compares the current value for specified properties or current state of an object with the expected value which can be inserted at any point of time in the script.


The different types of checkpoints in QTP are as follows

Standard Checkpoint is inserted to verify the property values of an object in application under test and supported by all add-in environments.

Bitmap Checkpoint is used to verify an area of your application as a bitmap. It compares pixel wise data.

Table Checkpoint verifies the information within a table. 

Text Checkpoint is widely used for run time validations. It verifies that the text is displayed in a screen, window, or Web page. When checking text, Quick Test tries to retrieve the text directly from the test object.

File Content Checkpoint verifies the text in a dynamically generated or accessed file such as .txt,.pdf.

Accessibility Checkpoint verifies the page and reports the areas of the Web site that may not conform to the World Wide Web Consortium (W3C) Web Content Accessibility Guidelines

Text Area Checkpoint enables you to check that a text string appears within a defined area in a Windows application, according to specified criteria

Page Checkpoint verifies the characteristics of a Web page. 

Database Checkpoint verifies the contents of a database accessed by the application under test.

XML checkpoint verifies the content of the .xml documents or .xml documents in Web pages and frames.

Most of the checkpoints could be inserted in recording mode only. You can follow these steps for a standard checkpoint

QTP should be in recording mode -->Cursor should be placed in desired location -->Insert Menu -->check point -->Standard checkpoint -->Show the object -->click OK ->select property and enter expected results--> click OK--> Stop Recording.



Explaining Database Checkpoint

Database Checkpoint checks the contents of a database accessed by the application. 

User compares the actual data in database with the expected data which we set while creating a checkpoint.

For example, a person books a flight ticket in the Mercury Tours website. A booking id is generated at runtime which is unique and which is one more than the booking id generated for last user. We create a database checkpoint which validates that the correct id has been generated.

The checkpoint can be inserted by going to the following options –

Insert --> Checkpoint --> Database Checkpoint

Then we can specify the SQL query for accessing data using Database query wizard.

The query can be specified manually or using Microsoft Query.

The results of the query is the displayed in the Database Checkpoint properties window

The Database Checkpoint properties window represents the expected data, 

The expected value can be configured by selecting it in the table and changing it in the Configure value box


 “By row number” and “By selected key column(s)”

When row option is “By row number”, the tool matches the expected values and actual database values on a one to one basis i.e. value found based on row and column matches. 

When row option is “By selected key column(s)” the expected and actual data values are matched irrespective of the order in which they appear. 


Parameterize the database checkpoint.

We can instruct Quick Test to use a value from the Data Table as the expected value for a particular cell.

Parameterization allows for iterations to be done. In the screen shot shown below we see the value in cell (1,1) has been parameterized.

QTP Custom CheckPoints

Exist Method is an important method to check if the object is present or not in an application, if present in the application, the Exist method returns true, else, it returns false. 
Syntax: Object.Exist(Timeout)

GetROProperty is short for Get-Runtime-Object-Property. In other words, this method can be used to retrieve the value that the object has, at present.


It is powerful in identifying run time properties of objects and checking wther the value is expected or not.

'.html_safe
render "qtp/qtpintroduction"
	end

	def smartidentificationsynchronization
		@title= "Smart Identification & Synchronization"
		@previous="checkpoints"
		@next="regularexpressions"
		@article='Why QTP Smart Identification?


In many cases, QTP tries to recognize an object but cannot identify the exact object or more than one object matches the properties. In such complicated situations smart identification is the way forward.

Smart Identification uses two types of properties:

Primary: The basic properties of a particular test object class whose values cannot be changed without changing the essence of the original object.

Secondary: Other properties also assist in identifying the objects of a particular class whose properties are unlikely to change often but can be ignored if they are no longer applicable.

For most of the objects “Smart identification” is turned ON by default. 

You can see where this is the case for a certain object by accessing it in the OR under “Additional details” part of its object properties. It is set to “True” if enabled and “False” if disabled.

Enable or disable Smart identification entirely for a test run. Choose “File->Settings->Run->Disable Smart Identification during the run session” option.



QTP Synchronization Point or Sync


Consider your day to day web usage, you sign in to a webpage by entering username and password. Once you press enter, does the next page immediately open? No. There is a delay in page navigation and load.

This delay could cause the qtp test to fail as the line in code cannot see the object or its properties.

To Synchronize this kind of real-time delay, a Sync or synchronization point could be injected in the code.

It can be inserted while recording using the menu option “Insert->Synchronization Point”






Other Ways to Insert Sync Point:

WaitProperty

Exist

Wait

Sync(only for web based apps)

Inserting QTP Inbuilt Synchronization points.


It can very easily be done for a browser like this,

Browser “Browser Name”.Sync

To see the default Sync settings navigate to "File" >> "Settings" >> Run Tab >> Object Synchronization Time out.

Some Explanation on these

Wait is used to hold QTP until and unless whatever the  time you mentioned in wait statement

Syntax: Wait(1000)

Wait Property is also holds the QTP until and unless the Property will match the object property.

Syntax: Window ("............").WIinEdit("............").WaitProperty("Property Name","PropertyValue",Timeout in millisec)

Sync is used only for web application and same as wait statement.

Syntax:Browser("...........").Page("...............").WebEdit("..................").Sync


Note: For any web based automation code make sure you analyze and implement synchronization.  '.html_safe
render "qtp/qtpintroduction"
	end

	def regularexpressions
		@title= "Regular Expressions"
		@previous="smartidentificationsynchronization"
		@next="virtualobjectsfilesystemobjects"
		@article='What is Regular Expression in QTP?

A regular expression is a string that describes or matches a set of strings, according to certain syntax rules.  

It is often called a pattern, is an expression that describes a set of strings. They are usually used to give a concise description of a set, without having to list all elements. 

Regular expressions are used by many text editors  and utilities to search and manipulate bodies of text based on certain patterns. 

Many programming languages support regular expressions for string manipulation. 
 
The origin of regular expressions lies in Automata Theory and formal language theory (both part of Theoretical Computer Science). 

Can use regular expressions for:

Defining the property values of an object in dialog boxes.

Parameterize a step.

Creating checkpoints with varying values.


Regular Expression Sub Match String

A Sub Matches collection contains individual sub match strings. 

Strings following the specified pattern will get stored in sub matches collection when regular expression is executed.

Regular Expression for Property Samples

This is used to change value of a property in a predictable way during each run session.

By default, the value of all Property objects added to a Properties collection is treated as regular expressions. 

Use the Regular Expression property to change this setting for a specific Property object in the collection.


Syntax  :

PropertiesColl(Property).RegularExpression = BooleanSetting
Tips & Tricks		


Power of \, $, (), ?, |, []. $ EXPRESSIONS

A backslash (\) instructs QuickTest to treat the next character as a literal character, if it is otherwise a special character.

The backslash (\) can also instruct QuickTest to recognize certain ordinary characters as special characters. Example: QuickTest recognizes \n as the special new line character


\W instructs QuickTest to match any character other than alphanumeric characters and underscores.

Caret  (^) instructs QuickTest to match the expression only at the start of a line, or after a newline character.

Dollar sign ($) instructs QuickTest to match the expression only at the end of a line, or before a newline character.

Parentheses (()) instruct QuickTest to treat the contained sequence as a unit, just as in mathematics and programming languages.

A vertical line (|) instructs QuickTest to match one of a choice of expressions

Question mark (?) instructs QuickTest to match zero or one occurrences of the preceding character. 

Plus sign (+) instructs QuickTest to match one or more occurrences of the preceding character

Square brackets ([ ]) to match a single character within a range

Asterisk (*) instructs QuickTest to match zero or more occurrences of the preceding character

Period (.) instructs QuickTest to search for any single character (except for \n). 


Some samples


Matching Any Single Character (.) eg abc. Will match abc followed by any character.
Matching Any Single Character in a List ( [xy] ) e.g [ab] will match either a or b
Matching Any Single Character Not in a List ( [^xy] ) e.g 1[^23] will match all values between 11 to 19 except 12 and 13.
Matching Any Single Character within a Range ( [x-y] ) e.g : 1[1-3] will match 11,12, and 13.
Matching Any AlphaNumeric Character Including the Underscore ( \w )
Matching Any Non-AlphaNumeric Character (\W) will match any special character other than underscore. Please note case of W in this case.
Matching Zero or More Specific Characters ( * ) This matches zero or more occurrences of the preceding character. e.g ca* will match caa,caaaa,c and so on. Similarly c.* will match c, cs,caaa, and so on, since preceding character here is “.”.
Matching One or More Specific Characters ( + ) Only difference from * is it will match for minimum one character. e.g ta+r will match taar,tar but not tr as in above case.
Matching Zero or One Specific Character ( ? ) A question mark (?) instructs QTP to match zero or one occurrences of the preceding character. For example: te?r matches ter and tr, but nothing else
Matching One of Several Regular Expressions ( | )  e.g new|day will match either of new or day. If we write ne(w|d)ay, it will match neway or neday.
Matching the Beginning of a Line ( ^ ) This will match only if match is found at beginning of line.
Matching the End of a Line ( $ )  This will match only if match is found at end of line.
Matching a word at boundary(\b) e.g new\b will match testnew but not in knewit.
Matches a digit character(\d)  Matches a digit value.
Matching a non-digit character(\D) Matches a non digit value'.html_safe
render "qtp/qtpintroduction"
	end

	def virtualobjectsfilesystemobjects 
		@title= "Virtual Objects & File System Objects"
		@previous="regularexpressions"
		@next="recoveryscenarios"
		@article='Virtual Objects , What Are They ?

Virtual Objects are objects that behaves like normal objects,but are not recognized by QuickTest.

We can define these objects as virtual objects and map them to standard classes, such as a button or a check box.

A virtual object collection is a group of virtual objects that is stored in the VirtualObject Manager under a descriptive name.

Defining a Virtual Object

We define a virtual object using the Virtual Object Wizard.

Using the Virtual Object Wizard, we can map a virtual object to a standard object class, specify the boundaries and the parent of the virtual object, and assign it a name.
 
Only those objects can be defined as Virtual Objects on which we can click or double-click and that record a Click or DblClick step. Otherwise, the virtual object is ignored.


Steps to Create a Virtual Object

In QuickTest, choose Tools > Virtual Objects > New Virtual Object. 

Select a standard class to which you want to map your virtual object. 

Click Mark Object button. Use the crosshairs pointer to mark the area of the virtual object. 

An object in the object tree is assigned as the parent of the virtual object. 

Specify a name and a collection for the virtual object. 

To Disable a Virtual Object

Choose Tools > Options or click the Options toolbar button. The Options dialog box opens.
In the General tab, select the Disable recognition of virtual objects while recording





Removing a Virtual Object

We can remove virtual objects from were test or component by deleting them from Virtual Object Manager that can be accessed from ToolsàVirtual Objectà Virtual Object Manager 



QTP File System Object

The FSO object model is contained in the Scripting type library (Scrrun.dll), supports text file creation and manipulation through the TextStream object. 

The FSO object model gives the server-side applications the ability to create, alter, move, and delete folders, or to detect if particular folders exist, and if so, where. 

Information about folders, such as their names, the date they were created or last modified, can also be detected. 

Create FSO Objects: FSO Objects can be created using the CreateObject Method. 
	
Dim myfso
Set myfso = CreateObject (“Scripting.FileSystemObject”) 

Creating Text Files using FSO

CreateTextFile method of FSO helps to create text files. 

fsoObject.CreateTextFile (filename [, overwrite [, Unicode]]) as TextStream.


Parameters 
Filename – The Filename for the file to be created 

Overwrite – Boolean value indicating whether to overwrite the file if it already exists. If the file is to be overwritten, the value set is true, else false. Blank denotes the files are not overwritten.

Unicode – Boolean value indicating the nature of the text file ie., whether the file to be created as a Unicode or an ASCII file.  The value set is True for Unicode, else False. Blank denotes ASCII files. 

Returns TextStream Object


ReadLine() Method is used to read the contents of a text file. Alternatively, Read() and ReadAll() methods can be used to achieve the same objective. 

ReadLine(): Reads all the characters till the newline character is encountered. I.e., it reads an entire line. 

Syntax : Object.ReadLine()

Syntax for OpenTextFile() is 

Object.OpenTextFile(filename[, iomode[, create[, format]]])

Parameters

Filename – Name of the file to be opened.

Iomode - Optional. The Mode in which the file has to be opened. The value can toggle between these three modes: ForReading, ForWriting, ForAppending 

Create – Optional. Boolean value that indicates whether a new file can be created if the specified file doesn’t exist. The value is true if new file has to be created, else false. If blank, then new file isn’t created. 

Format – Optional. Values toggle between 3 states. Whether the file has to be opened as Unicode, opened as ASCII or use the system default

The DeleteFile() or Delete() Method can be used to delete the file.
'.html_safe
render "qtp/qtpintroduction"
	end

	def recoveryscenarios
		@title= "Recovery Scenarios"
		@previous="virtualobjectsfilesystemobjects"
		@next="usefulsnippets"
		@article='QTP Recovery Scenarios 

While running a test in QTP there are certain unexpected events, errors, and application crashes which can distort your run session and distort results. 

This can result in the test run getting suspended until the occurred event has been corrected. 

User may have to again begin the complete test run which can be tedious if the test script is very long or there are more than two or more tests called in the current run.

A Recovery Scenario helps the user as it indicates QTP with regards to the corrective action needed to be taken in case of the unwanted event occurred during the test run.

Example is you can instruct QTP to access internet explorer and open google.com but there is no internet connectivity, you can instruct the test to skip the current activity and move to next.

Why Recovery Scenarios?

Recovery Scenarios are generally called by QTP on occurrence of any error during the test run.

Conditions where the user can predict any unexpected event, it is recommended to use optional steps or if conditions in the script.

Recovery scenarios should be used only for unpredictable events, or events that you cannot synchronize with a specific step in your test or component.

The Wizard

A Recovery scenario wizard helps the user in defining recovery scenarios, save them and also associate these to the corresponding tests. 

The path is Tools>Recovery Scenario Manager> New scenario.

A recovery scenario wizard consists of the following;

Trigger events 
Recovery Operation
Post-Recovery Test Run Option
Name
Finish



Trigger Events: Indicates for which event the user needs to add an recovery scenario.

Consists of the following events:

Pop-up Window: A window pops up in an opened application during the test run.

Object State: The property values of an object in your application match specified   values. You can specify property values for each object in the hierarchy.

Test run error: A step in your test does not run successfully.

Application crash: An open application fails during the test run.


QTP detects a pop-up window and identifies it according to the window title and textual content.

In this the user has the option to set Window title and/or contents within the Window making it convenient to QTP in calling the corresponding scenario.

The user will have to initially capture the screen user the object spy for identification by QTP.

QTP detects a specific test object state and identifies it according to its property values and the property values of all its ancestors. 

The user will have to identify the object using the Object spy and the corresponding object or parent properties get captured.

Further the user has the option to add or remove certain properties that shall be used by QTP for identification during scenario call.

QTP detects a run error and identifies it by a failed return value from a method. This option consists of a list in the drop down box as shown below.

User selects any one of the error conditions and the corresponding description for that error occurs in the description box.

QTP detects an application crash and identifies it according to a predefined list of applications

When the user selects this trigger event, he gets an list of applications from which he will have to select the applications that might cause a error. Each time this application causes the error the scenario is called.


Recovery Operations

User defines the kind of recovery operation that QTP needs to perform once the event has occurred.

The different operations are;

Key or mouse operation: The following operations can be performed
Clicks Default button or Enter key.
Clicks Cancel button or Esc key.
Click any button on the corresponding screen which the user can highlight by using the Spy available 
User can provide a combination of keys which the QTP will operate on the key board.

Close application: The processes declared by the user while defining the Application crash trigger event shall be identified by QTP and closed once this event occurs.

Function Call Screen: User has a option wherein he can call a function stored in the Library depending upon the type of trigger event and the Select Function option. 

Restarting Microsoft Windows: This option will lead to sudden termination of your script run and will close all the applications.


Post Recovery Run Options

The user then gets the option to decide what QTP will perform once the recovery operation is implied. It will operate one of the following below given conditions;

Repeat current step and continue 
Proceed to next step
Proceed to next iteration
Restart Current test run
Stop the Current Run

'.html_safe
render "qtp/qtpintroduction"
	end

	def usefulsnippets
		@title= "Useful Snippets"
		@previous="recoveryscenarios"
		@next="batchtests"
		@article='QTP Some useful and powerful code snippets

Here are some sample QTP code snippets which you could use in your programs.


Sample code to open a url in IEXPLORER, FIREFOX, CHROME


SystemUtil.Run "iexplore.exe" , url ,,,3
SystemUtil.Run "firefox.exe" , url ,,,3 SystemUtil.Run "chrome.exe" , url ,,,3


Sample code to create an excel file


Set excelobj = createobject("excel.application")
excelobj.Application.Visible = true 
excelobj.Workbooks.Add
wait 1
excelobj.ActiveWorkbook.SaveAs  "D:\samplecode.xls"
excelobj.Application.Quit
Set excelobj =nothing


Sample vbs code to open QTP test, run it and then close it


Dim QTPObj,QTPTest
Set QTPObj=CreateObject("QuickTest.Application")
If Not QTPObj.Launched then
QTPObj.Launch
End if
QTPObj.Visible=True
QTPObj.Open "D:\test script\TCQ1" 
Set QTPTest=QTPObj.Test
QTPTest.Run
QTPTest.Close 
QTPObj.Quit 


QTP code to generate a random number


x=RandomNumber (0,100)
print x

QTP code to delete a file


Set fso = CreateObject("Scripting.FileSystemObject") fso.DeleteFile("D:\Delete Me Please.txt") Set fso = Nothing


QTP methods to stop a test


ExitTest - Exits the entire Test ExitRun - is an obsolete (not supported now in newer versions or supported for backward compatibility) ExitTest is the alternative for this, ExitTestIteration - Exits the current iteration of the test.


QTP code to show nested For Loops


For i = 0 To 3 For j = 0 To 2   
print i+j

Next Next


QTP code to import a data shett and find the row count


DataTable.ImportSheet "C:\Documents and Settings\Desktop\Book1.xls","Sheet1","Global"
Msgbox datatable.GetSheet("Global").getrowcount











VBScript Data Types Available


'.html_safe
render "qtp/qtpintroduction"
	end

	def batchtests
		@title= "Batch Tests"
		@previous="usefulsnippets"
		@next="descriptive"
		@article='QTP Batch Testing is a process of running several tests in a succession and in a group

There are two techniques

Test Batch Runner
Manual Scripting


Batch Testing Using Batch Runner

Run several tests in succession. 

You can save the list as an .mtb file and later on you can include or exclude a test in your batch list from running during a batch run. 

Results for each test  are stored in their default location or the specified location.  

To enable Test Batch Runner to run tests, you must select allow other HP products to run tests and components in the Run tab of the Options dialog box

Choose Programs > Quick Test Professional > Tools > Test Batch Runner from the Start menu. The Test Batch Runner dialog box opens
 
Click the Add button or choose Batch > Add. The Open Test dialog box opens. 

Select a test you want to include in the test batch list and click Open. The test is added to the list.

Inserting/Removing/Unchecking/Saving Tests

To insert a test at another point in the list, select the test that is to precede the test you would like to add. When you add the test, it is added above the selected test. 

To remove a test from the list, select it and click the Remove button, or choose Batch > Remove. 

If you want to include a test in the list, but you do not want the test to be run during the next batch run, clear the check box next to the test name. 

If you want to save the batch list, click the Save button, or choose File > Save, and enter a name for the list. The file extension is .mtb.

Run & View Results

Click the Run button or choose Batch > Run. If Quick Test is not already open, it opens and the tests run sequence begins. Once the batch run is complete, you can view the results for each run

In order to view the result selects the “Result” option from the Test Menu on “Menu bar” of QTP. Select the result file

Manual Test Batch 

Make Actions of the QTP test scripts (that needs to be run as a part of batch ) as reusable 

Create an another QTP test file and call these reusable action in this file  as shown below

To insert or call existing action Select Insert->Call to Existing Actions. Following window would appear.

The result for all the test scripts (action) gets stored either in the temp or specified folder.

The Difference - Test Batch Runner and Running Batch Test Using Manual Script


Test Batch runner tool: For results you have to refer the separate result file for every test script.

Manual Scripting: After execution you will get results for different script in the same window. So it avoid the overhead involve in the checking separate test result file for    every test script.

'.html_safe
render "qtp/qtpintroduction"
	end

	def descriptive
		@title= "Descriptive Programming"
		@previous="batchtests"
		@next="frameworks"
		@article='Descriptive Programming provides a way to perform operations on objects that are not present in object repository. 

How to do it? There are two ways.

Create Description Objects


First a description object is created
Then unique properties are assigned to it which will identify the object in run time in the application

Ex :    
Dim oDesc ‘Declare an object variable
Set oDesc = Description.Create ‘Create an empty description

Now Assign Property values

oDesc(“type”).value= “text”
oDesc(“name”).value= “userName”
oDesc(“html tag”).value= “INPUT”


Use Description Strings


Prepare a string with a tuple of property name and value
Provide this string in within () and it will access the object name

Ex :    
Button(“name:=buttonLogin”,”id:=1234”).click

To determine which property and value pairs to use, you can use the Object Spy:

Go to Tools -> Object Spy.
Select the "Test Object Properties" radio button.
Click on the desired object.
In the Properties list, find and write down the properties and values that can be used to identify the object.


Advantages:

Descriptive Programming based Test scripts are faster in execution than Repository based Test scripts.

Scripts are portable (we can run these scripts from any machine easily)

Maintenance is easy (less amount of resources)

Start Test Execution process even though Application is not ready.


When to Use Descriptive Programming?

When you are creating functions in an external file. You can use these function in various actions directly , eliminating the need of adding object(s) in object repository for each action[If you are using per action object repository]


The objects in the application are dynamic in nature and need special handling to identify the object. 


When object repository is getting huge due to the no. of objects being added. If the size of Object repository increases too much then it decreases the performance of QTP while recognizing a object. [For QTP8.2 and below Mercury recommends that OR size should not be greater than 1.5MB]

When you don’t want to use object repository at all. 


Child Objects

ChildObjects method is used to retrieve all objects located inside a specified parent object, or only those child objects that fit a certain programmatic description. 

To retrieve this subset of child objects, you first create a description object, and then you add the set of properties and values that you want your child object collection to match using the Description object.

Use the Description object to create the programmatic description for the ChildObjects description argument. 

After you build a description in your description object, use the following syntax to retrieve child objects that match the description:

Set objSet=TestObject.ChildObjects(Description)




Example

The statements below instruct QuickTest to select all of the check boxes on the Itinerary Web page:

Set ObjSet= Description.Create()
ObjSet("html tag").Value = "INPUT"
ObjSet("type").Value = "checkbox"
Set Checkboxes = Browser("Itinerary").Page("Itinerary").ChildObjects(ObjSet)
NoOfChildObjs = Checkboxes.Count
For Counter=0 to NoOfChildObjs-1
Checkboxes(Counter).Set "ON"
Next
'.html_safe
render "qtp/qtpintroduction"
	end

	def frameworks
		@title= "Frameworks"
		@previous="descriptive"
		@next="selenium"
		@article='Test automation framework is an integrated system that sets the rules of automation of a specific product. This system integrates the function libraries, test data sources, object details and various reusable modules. 

These components act as small building blocks which need to be assembled to represent a business process. 

The framework provides the basis of test automation and simplifies the automation effort.

Types of Automation Frameworks


Linear (procedural code, possibly generated by tools like those that use record and playback)

Structured (uses control structures - typically ‘if-else’, ‘switch’, ‘for’, ‘while’ conditions/ statements)

Data-driven (data is persisted outside of tests in a database, spreadsheet, or other mechanism)

Keyword-driven

Hybrid (two or more of the patterns above are used)

Agile automation framework



Key Principles for Automation Framework Design


Maintainability and Extendibility - The automation suite would be easily maintainable. 

Nomenclature of the scripts and functions be kept simple and the code be well commented. 

The suite also needs to be extendible. This would imply building a common framework and standards on which more enhancements to application or test scenarios can be easily added. 


Customization - Test data would be parameterized into constants or data files. Abstract all variant data and include them in files/ data tables. These should not affect the code.
Scalability: Framework would allow scheduling all test scripts or targeted test scripts from different modules for execution single run/test. This provides the flexibility that there is no dependency that different module to be tested or executed separately.

Modularity: Framework would be Modular. Different components of the Framework would be divided into separate modules/ actions. Functions help a lot in this.

Error Handling: Framework would be capable of handling any kind of unexpected errors.

Reporting: Framework would generate a comprehensive report which is easy to analyze and can be shared with client.

Explaining the Key Word Driven Framework

In keyword driven automation framework, focus is mainly on kewords/functions and not the test data. This means we focus on creating the functions that are mapped to the functionality of the application.

Main components in keyword driven automation framework 

Scripts Library: In large automation frameworks there would be plenty of functions and these would be required by many modules in the framework. Therefore the reusable funclions are created and stored as library files.
Object Repository: Collection of local & shared object repositories in the framework.
Test Data: Usually stored in data table itself, can also be stored in external files.
Settings and Environment Variables: A list of important settings are mentioned here,
Object Synchronization timeout
When Error Occurs during run session
Resources - Associated library files
Environment - We need to set up some variables like folder path
Recovery - We must associate the recovery scenario file to the test. Recovery Scenario will handle unexpected events during execution. This will help for smooth execution using QTP.
Reports will display the total number of test cases executed, Total Pass Test cases, Total Failed test cases and total time required to execute the test cases. This will give better picture of QTP Execution.

'.html_safe
render "qtp/qtpintroduction"
	end

	def selenium
		@title= "Qtp Vs Selenium"
		@previous="selenium"
		@article='Why Test Automation?

Fast and Accurate
Effective
Click once and Run N Times
Modifiable
Reusable

In short, Test Automation is super powerful in executing test cases.

Lets compare two of the main software’s which are used for automated testing and let you decide which is best for your project


The two automation software we compare here are:


HP Quick Test Professional

Selenium


HP QuickTest Professional (QTP) provides functional and regression test automation for software applications and environments and is one of the leading players in the market when it comes to functional and regression testing. 

Key Advantages:

Uses VBScript as scripting language
Easy to use due to its simple interface and the flow of steps in code (expert view) and step wise view (keyword view).
Different types of record and playback options
No expert level coding experience required
Smooth integration with other HP products like Test management tool HP Quality center.
Detailed and good looking results viewer enables the user to gather, understand, analyze and store results which could be quickly reviewed and even played back in a later point in time.

A few challenges:

High cost is associated with HP Quick test Professional license. 
Do not support Operating Systems other than Windows
QTP doesn’t support the latest browser versions; there is always a lag in the latest browser in the market to be supported by HP QTP.
The resource utilization (CPU & Memory) is considerably high in QTP. 

Selenium is a set of different software tools each with a different approach to supporting test automation. It is the most powerful open source automation tool available. 

Key Advantages:

Selenium is absolutely free of cost and that gives it a huge advantage over other automation tools.
Selenium supports many languages like Java, C#, Ruby etc and requires skilled expertise build a test automation framework.
Selenium supports almost all major browsers and its latest versions in the market.
Selenium is very powerful in integrating with external applications like Maven, TestNG, Jenkins etc.


A few challenges:

Selenium supports only browsers and not windows based applications. 
You will have to build a complete framework and wouldn’t have the inbuilt features that QTP has.
An expert level coder is required to develop and maintain the code.


HP QTP v/s Selenium Comparison Table


'.html_safe
render "qtp/qtpintroduction"
	end

end
