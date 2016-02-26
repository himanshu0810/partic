class QtpController < ApplicationController
	
	def qtpintroduction
		@title= "Introduction to Quick Test Professional"
		@next="recordingwaysandrunmodes"
	@article='HP QuickTest Professional (QTP) provides functional and regression test automation for software applications and environments. QTP runs on Windows OS and not on Linux, MAC OS. <br> <br>

QTP uses vbscript as its scripting language. It is easy to use due to its simple interface and the flow of steps in code (expert view) and step wise view (keyword view). <br> <br>

QTP also provides different types of record and playback option which enables a user with no coding experience to create and execute tests. <br> <br>

Integration with other HP products like Test management tool HP Quality center is also key in this being a wonderful automation tool. Test management becomes easy as the automated tests and QTP can directly update results in test scripts in QC. A detailed and good looking results viewer enables the user to gather, understand, analyze and store results which could be quickly reviewed and even played back in a later point in time. <br> <br>

Now a few challenges while building your framework in HP QTP are as follows,  <br> <br>

A high cost is associated with HP Quicktest Professional license. So if the project is a huge one, its better getting a concurrent license. QTP doesn’t support the latest browser versions, there is always a lag in the latest browser in the market to be supported by HP QTP.  <br> <br>

The resource utilization (CPU & Memory) is considerably high in QTP.  <br> <br>

<b><u>Latest Version Available :</b></u> Unified Functional Testing 12.01 <br> 
UFT 12.01 was released in July 2014 and its Key Features are :  <br>
<ol>
<li>Official support for Windows 8.1</li>
<li>Support for Safari on Mac OS is now out of Tech Preview and available for production environment</li>
<li>Chrome extension for UFT is available in Chrome Store from now on</li>
<li>Better documentation</li>
<li>Support for windows run time objects</li>
</ol>
<b>UFT 12.01 is the latest version available in the market as of August 2014.</b>

<b><u>Add Ins in QTP</b></u>

<b>Default Support </b><br><br>
<ul>
  <li> Standard Windows applications (default)</li>
  <li>Web objects / Applications</li>
  <li> ActiveX controls</li>
  <li> Visual Basic applications</li>
</ul>
<b>Additional QuickTest add-ins </b>
<ul>
  <li> Java </li>
  <li> Oracle </li>
  <li> SAP </li>
  <li> .NET </li>
  <li> Web Forms </li>
  <li> Siebel </li>
  <li> PeopleSoft </li>
  <li> Web services </li>
  <li> Main frame (Terminal Emulator)</li>
</ul>
<br>

<i><u><b>Note:</b></u> Multiple patches are available for browser and application support. These patches will allow QTP to identify objects and enable automation for other applications and versions.</i><br><br>

<b><u>License Types</b></u><br><br>

<b>Seat License </b>is individual license which could be purchased and used by a single user. When the number of users who require the license simultaneously is high, seat license is not preferred.<br><br>

<b>Concurrent License </b>is a network based license which can be accessed by multiple users simultaneously. Concurrent license is preferred by organizations implementing testing services<br><br>

'.html_safe
	end

	def recordingwaysandrunmodes 
		@previous="qtpintroduction"
		@next="debugginganditsoptions"
		@title= "Recording Ways and Run Modes"
			@article='<b><u>Recording Types in QTP</b></u>
			<ol>			
<li>Normal Recording</li>
<li>Analog Recording</li>
<li>Low Level Recording</li>
</li>
</ol>

<b>Normal Recording</b>
Normal recording mode records the objects and the operations performed in the application. <br>
This mode is the default and takes full advantage of QuickTest\'s test object model, recognizing the objects with its key properties in your application regardless of their location on the screen. <br><br>
<b>Analog Recording </b><br>
This type of recording enables to record the exact mouse and keyboard operations you perform in relation to either the screen or the application window.<br>
Analog Recording Settings Dialog Box consists of the two operands;<br>
Record relative to the screen: Records all mouse movement or keyboard input on all windows in the screen<br>
Record relative to the window: Records any mouse movement or keyboard input relative to the coordinates of the specified window.<br>
<b>Low Level Recording</b></br>
Used when test objective pertains to the specific object location. Useful for objects where exact co-ordinates are required and it records objects as windows test objects.<br>
This type of recording enables to record on any object in the application, whether or not Quick Test recognizes the specific object or the specific operation. <br>
It should be used when the environment or the object is not recognized by QTP / if the exact coordinates of the object are important for your test or component.
<br><br>
<b>Run Modes in QTP</b>
<br><br>
There are two modes of running the scripts in QTP namely<br>
<ol>
<li>Normal</li>
<li>Fast</li>
</ol>
<br><br>
Normal mode uses the execution arrow in both the Keyword and Expert view marking the each step or statement performed.It takes more time to execute each step. Very helpful in debugging the execution.Fast Mode does not use the execution arrow to run the test or component in either Keyword View or Expert View and does not expand the item tree or display the script of each action as it runs.Faster execution guaranteed than normal mode.


<b><u>Record and Run settings</b></u><br><br>

Record and Run Settings is launched when we record a new test, a dialog called Record & Run Settings is opened. User can also access this from Automation option.<br><br>

The tabs in this dialog depends upon the number of add ins selected while opening up QTP.<br><br>

You can customize the settings in the dialog for example in Web settings you can increase or decrease load time of a webpage depending upon the speed of network.<br><br>

<b>Windows Application Tab: </b>There are two radio buttons, <br>
<br>
<ol>
<li>QTP records and run test on any application </li>
<li>QTP records and run test on specific applications</li>
</ol>
<b>Web Tab:</b> It also has two radio buttons, <br><br>
<ol>
<li>QTP records and run test on application opened on any browser </li>
<li>QTP records and runs tests by opening application in a new browser of the specified type.</li>
</ol>

<b>When should I use record & run?</b>

<ol>
<li>
When the scripts and coverage is less, recording holds best as the maintenance is very less.
</li>
<li>
Ideal for smaller releases
</li>
<li>
Consider a scenario where the testing team is relatively new to automation and an expert is not available. The ideal way to go forward is a record and run method.
</li>
<li>
If an enhanced automation framework is not required it implicates recording will be ideal.
</li>
</ol>
'.html_safe
render "qtp/qtpintroduction"
	end

	def debugginganditsoptions
		@title= "Debugging and Its Options"
		@previous="recordingwaysandrunmodes"
		@next="objectspropertiestypes"
	@article='	

	<b>Debugging Options</b><br><br>

<b>Pause:</b> Exactly, it pauses the run. You can validate for state of objects, and values in variable immediately. It is also used to suspend the run. Press F5 to resume the test run.<br>
<b>Step Into:</b> We can use Debug>Step Into or Press F11 or click on Step into button. Step Into lets us debug in the function called in script and run each step line by line in the function.<br>
<b>Step Over:</b> It steps over, debugs line by line in a script, but instead of debugging a function called within script, it executes the function as a step and moves to next step in the Test. Step Over using F10 Key.<br>
<b>Step Out:</b> Used to step out of a function. Step Out using shift + F11 Key.<br>
<b>Run To Step:</b> This is an option to define the endpoint of your run. The code will run from beginning and stop at the point you define. Use Ctrl +F10 to do this.<br>

<b>Debug from Step :</b> This is an option to define the start point of your debug. The code will run from this point and stop at the script end line.<br><br>

<b>Break Points are handy in QTP:</b><br>
Break points are mainly used in one or many areas in test by just clicking the left margin which indicates a pause at that line of code. They are applicable only to the current Quick Test session and are not saved with the tests. Its like a predefined pause.<br><br>

<b>Debug Viewer Contains 3 Tabs:</b><br>
<br>Watch Tab</b> is used to view the value of any variable or an expression in the test.<br> 
<br>Variables Tab</b> shows the current value of variables in the test. This can be modified by the user too.<br>
<br>Command tab </b>is used to execute a line of script to set or modify the current value of a variable or VBScript object in your test or function library.<br><br>

<b>Other Means to Debug A Code/Test</b>
<ul>
<li>
Use of Message Box statements
</li><li>
Usage of Reporter
</li>
<li>
Print statements
</li>
</ul>
<b>
Use of Message Box statement </b>is ideal for small code snippets. MsgBox statements can popup a message box to display the value of the variable you want to print. 

It also helps to use message boxes to know whether we are actually entering a condition statement like If or While. 

Ideal for checking where the exact code is breaking and what value causes it to do so<br>
	<br>

<b>Usage of Reporter</b> is ideal if the test is large/complicated and we want to verify multiple variables / want to display certain useful information which helps in debugging, we can use the Reporter.ReportEvent statement. 

For informational purpose we will use Reporter.ReportEvent micDone, "Info”,” Entered loop". 

We can use micPass and micFail for updating the results file directly which is also used to validate the timings.<br><br>

<b>Print statement </b>is a very useful command in QTP. Print "Message" once used in a code, a log window will popup during your execution but remember that this log window will not hinder your execution like a MsgBox. 

Multiple print statements can help you see all the messages that you want to print in the log window without interrupting your execution. 

It could be called as a 1 Up to MsgBox.<br><br>


<b>Watch </b>is a debug feature which is ignored but is very cool. Watch could be compared as retrieving run time values at that moment of time. 

Select the variable and press Ctrl+T or Debug->Add to Watch. 

A Debug window will appear now and the variable you wanted to "watch" would be added to the list. 

The value would be listed alongside as per the variable\'s current value in the execution. 
<br><br>

For those who are new <br><br>

Why Debugging , QTP is simple to understand and easy to code so it will keep you involved and you might record some piece of code, write on your own and also get some pre written code from the web.<br><br>

Now you have a code that runs for one set of values – you have now assembled a code by various means.<br><br>

What if this piece of code fails for certain negative conditions, here comes the power of debug.<br><br>

Instead of reading the code from line 1 to line N, just use any of the above mechanisms to get to the root cause of the issue'.html_safe
render "qtp/qtpintroduction"
	end

	def objectspropertiestypes
		@title= "Object Properties And Types"
		@previous="debugginganditsoptions"
		@next="vbscript"
		@article='<b>Object model </b> is a structural representation of software objects that comprise the implementation of a system or application. It defines a set of classes and interfaces, together with their properties, methods and events, and their relationships. <br><br>

<b>Test Object</b> is used by QTP to represent an object in the application. It can consist of one or more methods or properties. These objects are identified through a number of identification properties.<br><br>

QTP supports these test objects namely,<br><br>
<ul>
<li>Standard Windows Object </li>
<li>ActiveX Objects </li>
<li>Visual Basic Objects </li>
<li>Web Objects </li>
<li>Utility Objects </li>
<li>Supplemental Objects</li>
</ul>

<b>Object Repository </b>is a collection of object and properties with which QTP will be able to recognize the objects and act on it. When a user records a test, the objects and its properties are captured by default. <br><br>

<b>Why Object Repository?</b>
<ul>
<li>Separates physical attributes from the test scripts resulting is simple test scripts</li>
<li>Enables efficient object identification</li>
<li>Allows a user to rename and store objects in application </li>
<li>Provides the connection between Names and physical attributes</li>
<li>Maintainability – Easy to maintain as the repository is separate from the code</li>
<li>Readability of scripts is improved with the usage of Names</li>
<li>Portability – use the same script with different Object Repository for each platform</li>
</ul>

A user could add more objects to a repository, delete objects from an existing repository or even modify the properties of an object in a repository.<br><br><br><br>

There are two types of Object Repository
<ul>
<li>Local Object Repository</li>

<li>Shared/Global Object Repository</li>
</ul>
A local object repository is the default repository associated with an action. Local object repository could only be used by that particular action and not by other actions in the test. To make an object global means it could be accessed anywhere from the test.<br><br>

A global object repository is always preferred to be used in wider test frameworks as it is easy to maintain and reuse.<br><br>

A local object repository is saved with a file extension .bdb where as global one has an extension .tsr. The tsr file is a stand alone file and can be edited and shared efficiently.<br><br>


<b>Object Spy </b>is an absolutely superb feature of QTP which have the ability to spy any object on the test application and retrieve its properties. It can be defined as an option within QTP to add objects to the Object Repository. <br><br>

The Object Spy enables you to view both the run-time object methods and the test object methods associated with an object and to view the syntax for a selected method. You use the Object Spy pointer to point to an object. <br><br>

The Object Spy displays the object hierarchy tree and the run-time object methods or test object methods associated with the selected object in the Methods tab of the Object Spy dialog box.  <br><br>

<b><u>Important functions in VBScript related to objects and its properties</b></u>

<u>GetROProperty</u>
<ul>
<li>GetROProperty is an in-built method used to retrieve runtime value of an object property.</li>
<li>There are 4 steps involved in using the GetROProperty</li>
<ul>
<li>Record the Object on which you want to use the GetROProperty in Object Repository</li>
<li>For the recorded object identify the run-time property which could be used. You may use Object Spy.</li>
<li>Use this method to retrieve the identified Run-time property and store the value in a variable</li>
<li>Here is the value for further deductions</li>
</ul>
<u>SetTOProperty & GetTOProperty</u>
<li>When the test is run QTP creates a copy of this object  called Test Object and compares it with the Run Time Object</li>
<li>GetTOProperty enables you to retrieve the value of a property of Test Object</li>
<li>SetTOProperty enables you to assign a value to a test object property.</li>
<ul><br>
<b>Sample Code</b><br>
MsgBox Browser("Browser").Page("HomePage").WebEdit ("UserName").GetROProperty("text")'.html_safe
render "qtp/qtpintroduction"
	end

	def vbscript
		@title="VBScript"
		@previous="objectspropertiestypes"
		@next="actionsfunctions"
		@article='QTP uses VB script as its coding language so this page will give you a quick crash course on vbscript.<br><br>

VBScript is a subset of Visual Basic 4.0 language developed by Microsoft to provide more processing power to Web pages. VBS is very well used to write both server side and client side scripting. The key advantage is it being fast, portable and very light.
<br><br>
<b>Data Types</b><br><br>

VBScript supports only one data type called ‘Variant’. <br>
The variant data type is a special kind of data type that can contain different kinds of information and is the default data type returned by all functions in VBScript. 
A variant behaves as a number when it is used in a numeric context and as a string when used in a string context.<br>
Subtypes of data that a variant can contain: <br>
Empty, Boolean, Integer, Long, Single, Byte, Double, Date Time, string, Object, Error.
<br><br>

<b>Variable </b>is a placeholder that refers to a memory location that stores program information that may change at run time. <br><br>

Referred to by its name for accessing the value stored or to modify its value<br><br>

Variables are explicitly declared in the script using:<br><br>

Dim Statement<br>
Public statement<br>
Private statement<br>
<br>
<b>Constant </b>is a meaningful name that takes the place of a number or a string, and never changes. VBScript in itself has a number of defined intrinsic constants like vbOK, vbCancel, vbTrue, vbFalse and so on.<br><br>

The Const statement is used to create constants and is public by default<br><br>

<b>Conditional Constructs </b>execute statements or repeat certain set of statements based on conditions.<br><br>

<b>If – Then –Else</b> is used to evaluate whether a condition is true or false and depending on the result, to specify one or more statements to execute. <br><br>

<b>Select Case</b> is an alternative to If Then Else for selectively executing one block of statements from among multiple blocks of statements.  <br><br>

<b>Iterative Constructs </b>allows to run a group of statements repeatedly. The loop is repeated based on a condition. The loop runs as long as the condition is true.<br><br>
<ul>
<li><b>Do – Loop </b></li>

<li><b>While – Wend</b></li>

<li><b>For - Next  Loop</b></li>
</ul>

A simple code snippet to open some applications using vbs in qtp<br><br>


#Code to open Internet Explorer : <br>

SystemUtil.Run "iexplore.exe" <br>

#Code to Open Notepad : <br>

SystemUtil.Run "notepad.exe"<br> 

#Code to Open LearnPanda : <br>

SystemUtil.Run "http://learnpanda.com"<br> 
<br>



'.html_safe
render "qtp/qtpintroduction"
	end

	def actionsfunctions
		@title= "Actions & Functions"
		@previous="vbscript"
		@next="datatableparameterization"
		@article='<b>Actions</b> are a set of logical statements to perform specific test. Every QTP test opens with the default action. <br><br>

For example consider a code to open google.com, log into gmail, log out and then close the browser. This test could be logically divided to 4 actions namely,<br><br>
<ul>
<li>Action 1 : Open Google</li>
<li>Action 2 : LogIn Gmail</li>
<li>Action 3 : LogOut Gmail</li>
<li>Action 4: Close Broser</li>
</ul>
<b>
Types of Actions</b><br><br>

<b>Non Reusable action</b> is an action that can be called only in the test with which it is stored, and can be called only once.<br><br>

<b>Reusable action </b>is an action that can be called multiple times by the test with which it is stored (the local test) as well as by other tests.<br><br>

<b>External action </b>is a reusable action stored with another test. External actions are read-only in the calling test, but you can choose to use a local, editable copy of the Data Table information for the external action.<br><br>

VBS code to call an action (without parameters)<br><br>

RunAction "Login Gmail", oneIteration<br><br>

<b>Operations in Actions:</b><br><br>

<b>Create an Action:</b> You can create any number of actions based on the complexity of the framework by clicking insert -> call to new action<br><br>

<b>Rename Actions:</b>  Rename existing actions by selecting it from action dropbox, right click and rename<br><br>

<b>Call an Action:</b> This is to call an existing action, you can do this by code or by insert -> call to existing action<br><br>

<b>Copy an Action: </b> To copy an action insert -> call to copy of action which is editable <br><br>
<b>Make an Action Reusable: </b>Change action reusability in Action Properties<br><br>

<b>Delete Actions: </b>Right clisk on the action and delete it. Make sure you cross validate the code for dependencies<br><br>

 <b>QTP Functions and Function Libraries:</b><br><br>

A user-defined function encapsulates activities or steps that require programming into operations (or keywords). These operations can then be used to enhance your test or component.<br><br>


User defined functions helps in:
<ul>
<li>Modularity of Code</li>
</li>Reusability</li>
</ul>

QTP allows creating two types of user defined functions <br><br>


<b>Associated to a test object</b><br><br> 

QTP allows registering a function and associating with a test object.  It is also possible to set that operation as the default operation for the selected test object. <br><br>

<b>Global </b><br><br>

When a function is not associated with any test object, then it is termed as Global Functions. Global functions can be called by selecting the Functions category in the Step Generator.<br><br>


<b>Scope of a QTP Function</b><br><br>
<ul>
<li><b>Public:</b> </li>

Public functions are those which can be called /accessed from multiple tests or components.  

To make a function public, the function should be defined and saved in the function library file.  

<li><b>Private: </b></li>
</ul>

Private functions are those that are defined in that action using the Expert View. 

They cannot be called from another action. 	<br><br>
<b>
Function Definition Generator</b><br><br>

Quick Test provides a Function Definition Generator, which enables to generate definitions for new user-defined functions and add header information to them. 
<br><br>
It also facilitates in the Function Definition Generator to register a function to a test object. After filling the required information, the Function Definition Generator creates the basic function definition for the user. 
<br><br>
The function definition can be then copied to a library file and associate it with the test or component of the definition can be directly copied to a test script.  
<br><br>
The Function Definition Generator can be invoked from Start -> Programs -> QuickTest Professional -> Tools -> Function Definition Generator.'.html_safe
render "qtp/qtpintroduction"
	end

	def datatableparameterization
		@title= "Datatable Parameterization"
		@previous="actionsfunctions"
		@next="checkpoints"
		@article='Datatable is a smartly used excel sheet inside QTP which enables a user to store test data, retrieve in the program and store test results. If there are n actions in a QTP test, there would be n+1 datatables in the test. The 1 is the global data sheet which decides how many iterations the test should run.<br><br>

Every action has an associated local data sheet too.<br><br>

<b>Local Data Table:</b> Each action has its own private data table also known as local data table which is can also be accessed across actions.<br><br>

<b>Global Data Table: </b>Each test has one global data sheet that is accessible across actions.<br><br>

The datasheet will populate run time values and these values witll be stored in the results folder. Do remember that these are run time values and therefore not stored in the test itself.
<br><br>
<b>
Parameterization
</b><br><br>
Parameterization is the practice of providing different test data through the same code to test various conditions with the same application but different data.<br><br>
<b>
Types of parameterization in QTP</b>
<br><br>
The variable value can be or the parameter types can be:<br><br>
<ul>
<li>Data Table parameters</li>

<li>Test/Action parameters</li>

<li>Environment variable parameters</li>

<li>Random number parameters</li>
</ul>

Example: If I have to test 5 pairs of username and password of which 3 are correct and 2 are wrong and I would want to get it tested.<br><br>

Here I use Data table parameterization with 5 usernames and 5 passwords and feed it into Global Data sheet and in the third column I would wish to see the result<br><br>

These are placed in global data sheet because I need 5 iterations of the same code to run.
<br><br>


<b>Add Sheet :</b> To “add” one new sheet to the run time data table.<br>

Syntax: DataTable.AddSheet "sheet name"<br><br>

<b>Delete Sheet: </b>To “delete” one specified sheet from the Run Time Data table.<br>

Syntax: datatable.DeleteSheet (Sheet_ID)<br><br>

<b>GetSheetCount :</b> To count number of sheets in the run time data table.<br>

Syntax: datatable.GetSheetCount<br><br>

<b>GetRowCount :</b> To count number of rows in the 1st sheet (longest column) of the Run time data table.<br>

Syntax: datatable.GetRowCount<br><br>

<b>GetSheet :</b> To return a specified sheet from the Run Time data table.<br>

Syntax: datatable.GetSheet(SheetID)<br><br>

Value : </b>To set or get value of cell in the specified parameter and the current row of the Rum time data table.<br><br>

<b>Set data</b><br>

Syntax: datatable.Value(Parameter_Name, Sheet_Name) = Value / variable Or

datatable(Parameter_Name, Sheet_Name) = Value / variable<br><br>

<b>Get data</b>
<br>
Syntax: Variable = datatable.Value(Parameter_Name, Sheet_Name) Or

Variable = datatable(Parameter_Name, Sheet_Name)<br><br>

<b>Add Sheet : </b>To “add” one new sheet to the run time data table.<br>

Syntax: DataTable.AddSheet "sheet name"<br><br>

<b>Delete Sheet:</b> To “delete” one specified sheet from the Run Time Data table.<br>

Syntax: datatable.DeleteSheet (Sheet_ID)<br><br>

<b>GetSheetCount :</b> To count number of sheets in the run time data table.<br>

Syntax: datatable.GetSheetCount<br><br>

<b>GetRowCount :</b> To count number of rows in the 1st sheet (longest column) of the Run time data table.<br>

Syntax: datatable.GetRowCount<br><br>

<b>GetSheet : </b>To return a specified sheet from the Run Time data table.<br>

Syntax: datatable.GetSheet(SheetID)<br><br>

<b>SetCurrentRow : </b>We can use this method to take a specified row as current row in the Run Time Datatable (By default it is 1st Row of 1st Sheet)<br>

Syntax: datatable.SetCurrentRow(Row_Number)<br><br>

<b>SetNextRow :</b> We can use this method to take the row after the current Row as New Current Row in the Run time data table.<br>

Syntax: datatable.SetNextRow<br><br>

<b>SetPrevRow :</b> We can use this method to take the row before the current Row as New Current Row in the Run time data table.<br>

Syntax: datatable.SetPrevRow<br><br>

<b>Import : </b>We can use this method to import Microsoft Excel File to the Runtime Data Table (Including all sheets)<br>

Syntax: datatable.Import “Path of File”<br><br>

<b>ImportSheet :</b> We can use this method to import a specified sheet of Microsoft Excel Sheet to the Runtime Data table.<br>

Syntax: datatable.ImportSheet “Path of File”, “Source Sheet”, “Destination Sheet”<br><br>

<b>Export :</b> We can use this method to export a copy of Run Time Data table to another location (Including all sheets)<br>

Syntax: datatable.Export “Path of File” <br><br> '.html_safe
render "qtp/qtpintroduction"
	end

	def checkpoints
		@title= "CheckPoints"
		@previous="datatableparameterization"
		@next="smartidentificationsynchronization"
		@article='<b>Checkpoint</b> is a validation point that could be inserted in a QTP test that compares the current value for specified properties or current state of an object with the expected value which can be inserted at any point of time in the script.<br><br>


The different types of checkpoints in QTP are as follows<br><br>

<b>Standard Checkpoint</b> is inserted to verify the property values of an object in application under test and supported by all add-in environments.<br><br>

<b>Bitmap Checkpoint </b>is used to verify an area of your application as a bitmap. It compares pixel wise data.<br><br>

<b>Table Checkpoint</b> verifies the information within a table. <br><br>

<b>Text Checkpoint </b>is widely used for run time validations. It verifies that the text is displayed in a screen, window, or Web page. When checking text, Quick Test tries to retrieve the text directly from the test object.<br><br>

<b>File Content Checkpoint</b> verifies the text in a dynamically generated or accessed file such as .txt,.pdf.<br><br>

<b>Accessibility Checkpoint</b> verifies the page and reports the areas of the Web site that may not conform to the World Wide Web Consortium (W3C) Web Content Accessibility Guidelines<br><br>

<b>Text Area Checkpoint </b>enables you to check that a text string appears within a defined area in a Windows application, according to specified criteria<br><br>

<b>Page Checkpoint </b>verifies the characteristics of a Web page.<br><br> 

<b>Database Checkpoint </b>verifies the contents of a database accessed by the application under test.<br><br>

<b>XML checkpoint </b>verifies the content of the .xml documents or .xml documents in Web pages and frames.<br><br>

Most of the checkpoints could be inserted in recording mode only. You can follow these steps for a standard checkpoint
<br><br>
QTP should be in recording mode -->Cursor should be placed in desired location -->Insert Menu -->check point -->Standard checkpoint -->Show the object -->click OK ->select property and enter expected results--> click OK--> Stop Recording.

<br><br>
<b>
Explaining Database Checkpoint</b><br><br>

Database Checkpoint checks the contents of a database accessed by the application. 
<br><br>
User compares the actual data in database with the expected data which we set while creating a checkpoint.
<br><br>
For example, a person books a flight ticket in the Mercury Tours website. A booking id is generated at runtime which is unique and which is one more than the booking id generated for last user. We create a database checkpoint which validates that the correct id has been generated.
<br><br>
The checkpoint can be inserted by going to the following options –
<br><br>
<ul>
<li>Insert --> Checkpoint --> Database Checkpoint</li>

<li>Then we can specify the SQL query for accessing data using Database query wizard.</li>

<li>The query can be specified manually or using Microsoft Query.</li>

<li>The results of the query is the displayed in the Database Checkpoint properties window</li>

<li>The Database Checkpoint properties window represents the expected data, </li>

<li>The expected value can be configured by selecting it in the table and changing it in the Configure value box</li>
</ul>
<b>
 “By row number” and “By selected key column(s)”</b></br></br>

When row option is “By row number”, the tool matches the expected values and actual database values on a one to one basis i.e. value found based on row and column matches. 
</br></br>
When row option is “By selected key column(s)” the expected and actual data values are matched irrespective of the order in which they appear. 
</br></br>
<b>

Parameterize the database checkpoint.
</b></br></br>
We can instruct Quick Test to use a value from the Data Table as the expected value for a particular cell.
</br></br>
Parameterization allows for iterations to be done. In the screen shot shown below we see the value in cell (1,1) has been parameterized.
</br></br>
<b>
QTP Custom CheckPoints
</b></br></br>
<b>Exist Method</b> is an important method to check if the object is present or not in an application, if present in the application, the Exist method returns true, else, it returns false.</br> 
Syntax: Object.Exist(Timeout)</br></br>

<b>GetROProperty </b>is short for Get-Runtime-Object-Property. In other words, this method can be used to retrieve the value that the object has, at present.
</br></br>

It is powerful in identifying run time properties of objects and checking wther the value is expected or not.

'.html_safe
render "qtp/qtpintroduction"
	end

	def smartidentificationsynchronization
		@title= "Smart Identification & Synchronization"
		@previous="checkpoints"
		@next="regularexpressions"
		@article='
<b>
		Why QTP Smart Identification?</b></br></br>


In many cases, QTP tries to recognize an object but cannot identify the exact object or more than one object matches the properties. In such complicated situations smart identification is the way forward.</br></br>

Smart Identification uses two types of properties:</br></br>
<b>
Primary:</b> The basic properties of a particular test object class whose values cannot be changed without changing the essence of the original object.
</br></br>
<b>
Secondary:</b> Other properties also assist in identifying the objects of a particular class whose properties are unlikely to change often but can be ignored if they are no longer applicable.
</br></br>
For most of the objects “Smart identification” is turned ON by default. </br></br>

You can see where this is the case for a certain object by accessing it in the OR under “Additional details” part of its object properties. It is set to “True” if enabled and “False” if disabled.</br></br>

Enable or disable Smart identification entirely for a test run. Choose “File->Settings->Run->Disable Smart Identification during the run session” option.
</br></br>


<b>QTP Synchronization Point or Sync</b></br></br>


Consider your day to day web usage, you sign in to a webpage by entering username and password. Once you press enter, does the next page immediately open? No. There is a delay in page navigation and load.</br></br>

This delay could cause the qtp test to fail as the line in code cannot see the object or its properties.</br></br>

To Synchronize this kind of real-time delay, a Sync or synchronization point could be injected in the code.</br></br>

It can be inserted while recording using the menu option “Insert->Synchronization Point”
</br></br>





Other Ways to Insert Sync Point:</br>
<ul>
<li>WaitProperty</li>

<li>Exist</li>

<li>Wait</li>

<li>Sync(only for web based apps)</li>

<li>Inserting QTP Inbuilt Synchronization points.</li>
</ul>

It can very easily be done for a browser like this,<br><br>

Browser “Browser Name”.Sync<br><br>

To see the default Sync settings navigate to "File" >> "Settings" >> Run Tab >> Object Synchronization Time out.<br><br>

<b>Some Explanation on these</b><br><br>

Wait is used to hold QTP until and unless whatever the  time you mentioned in wait statement<br>

Syntax: Wait(1000)<br><br>

<b>Wait</b> Property is also holds the QTP until and unless the Property will match the object property.<br>

Syntax: Window ("............").WIinEdit("............").WaitProperty("Property Name","PropertyValue",Timeout in millisec)<br><br>

<b>Sync</b> is used only for web application and same as wait statement.<br>

Syntax:Browser("...........").Page("...............").WebEdit("..................").Sync
<br><br>

Note: For any web based automation code make sure you analyze and implement synchronization.<br>  '.html_safe
render "qtp/qtpintroduction"
	end

	def regularexpressions
		@title= "Regular Expressions"
		@previous="smartidentificationsynchronization"
		@next="virtualobjectsfilesystemobjects"
		@article='<b>What is Regular Expression in QTP?</b><br><br>

A regular expression is a string that describes or matches a set of strings, according to certain syntax rules.  <br><br>

It is often called a pattern, is an expression that describes a set of strings. They are usually used to give a concise description of a set, without having to list all elements. <br><br>

Regular expressions are used by many text editors  and utilities to search and manipulate bodies of text based on certain patterns. <br><br>

Many programming languages support regular expressions for string manipulation. <br><br>
 
The origin of regular expressions lies in Automata Theory and formal language theory (both part of Theoretical Computer Science). <br><br>

Can use regular expressions for:<br>
<ul>
<li>
Defining the property values of an object in dialog boxes.
</li><li>
Parameterize a step.
</li><li>
Creating checkpoints with varying values.
</li>
</ul>
<b>
Regular Expression Sub Match String
</b><br>
A Sub Matches collection contains individual sub match strings. <br><br>

Strings following the specified pattern will get stored in sub matches collection when regular expression is executed.<br><br>
<b>
Regular Expression for Property Samples
</b><br>
This is used to change value of a property in a predictable way during each run session.
<br><br>
By default, the value of all Property objects added to a Properties collection is treated as regular expressions. 
<br><br>
Use the Regular Expression property to change this setting for a specific Property object in the collection.
<br><br>

Syntax  :

PropertiesColl(Property).RegularExpression = BooleanSetting
Tips & Tricks		
<br><br>
<b>

Power of \, $, (), ?, |, []. $ EXPRESSIONS
</b>
<ul>
<li>A backslash (\) instructs QuickTest to treat the next character as a literal character, if it is otherwise a special character.
</li>
<li>The backslash (\) can also instruct QuickTest to recognize certain ordinary characters as special characters. Example: QuickTest recognizes \n as the special new line character

</li>
<li>\W instructs QuickTest to match any character other than alphanumeric characters and underscores.</li>

<li>Caret  (^) instructs QuickTest to match the expression only at the start of a line, or after a newline character.</li>

<li>Dollar sign ($) instructs QuickTest to match the expression only at the end of a line, or before a newline character.</li>

<li>Parentheses (()) instruct QuickTest to treat the contained sequence as a unit, just as in mathematics and programming languages.</li>

<li>A vertical line (|) instructs QuickTest to match one of a choice of expressions</li>

<li>Question mark (?) instructs QuickTest to match zero or one occurrences of the preceding character. </li>

<li>Plus sign (+) instructs QuickTest to match one or more occurrences of the preceding character
</li>
<li>Square brackets ([ ]) to match a single character within a range</li>

<li>Asterisk (*) instructs QuickTest to match zero or more occurrences of the preceding character</li>

<li>Period (.) instructs QuickTest to search for any single character (except for \n). </li>
</ul>
<b>
Some samples
</b>
<ul>
<li>Matching Any Single Character (.) eg abc. Will match abc followed by any character.</li>
<li>Matching Any Single Character in a List ( [xy] ) e.g [ab] will match either a or b</li>
<li>Matching Any Single Character Not in a List ( [^xy] ) e.g 1[^23] will match all values between 11 to 19 except 12 and 13.</li>
<li>Matching Any Single Character within a Range ( [x-y] ) e.g : 1[1-3] will match 11,12, and 13.</li>
<li>Matching Any AlphaNumeric Character Including the Underscore ( \w )</li>
<li>Matching Any Non-AlphaNumeric Character (\W) will match any special character other than underscore. Please note case of W in this case.</li>
<li>Matching Zero or More Specific Characters ( * ) This matches zero or more occurrences of the preceding character. e.g ca* will match caa,caaaa,c and so on. Similarly c.* will match c, cs,caaa, and so on, since preceding character here is “.”.</li>
<li>Matching One or More Specific Characters ( + ) Only difference from * is it will match for minimum one character. e.g ta+r will match taar,tar but not tr as in above case.</li>
<li>Matching Zero or One Specific Character ( ? ) A question mark (?) instructs QTP to match zero or one occurrences of the preceding character. For example: te?r matches ter and tr, but nothing else</li>
<li>Matching One of Several Regular Expressions ( | )  e.g new|day will match either of new or day. If we write ne(w|d)ay, it will match neway or neday.</li>
<li>Matching the Beginning of a Line ( ^ ) This will match only if match is found at beginning of line.</li>
<li>Matching the End of a Line ( $ )  This will match only if match is found at end of line.</li>
<li>Matching a word at boundary(\b) e.g new\b will match testnew but not in knewit.</li>
<li>Matches a digit character(\d)  Matches a digit value.</li>
<li>Matching a non-digit character(\D) Matches a non digit value</li>

</ul>
'.html_safe
render "qtp/qtpintroduction"
	end

	def virtualobjectsfilesystemobjects 
		@title= "Virtual Objects & File System Objects"
		@previous="regularexpressions"
		@next="recoveryscenarios"
		@article='<b>Virtual Objects , What Are They ?</b><br><br>

Virtual Objects are objects that behaves like normal objects,but are not recognized by QuickTest.<br><br>

We can define these objects as virtual objects and map them to standard classes, such as a button or a check box.
<br><br>
A virtual object collection is a group of virtual objects that is stored in the VirtualObject Manager under a descriptive name.
<br><br>
<b>
Defining a Virtual Object
</b><br><br>
We define a virtual object using the Virtual Object Wizard.
<br><br>
Using the Virtual Object Wizard, we can map a virtual object to a standard object class, specify the boundaries and the parent of the virtual object, and assign it a name.
 <br><br>
Only those objects can be defined as Virtual Objects on which we can click or double-click and that record a Click or DblClick step. Otherwise, the virtual object is ignored.
<br><br>
<b>
Steps to Create a Virtual Object</b><br>
<ul>
<li>
In QuickTest, choose Tools > Virtual Objects > New Virtual Object. </li>
<li>
Select a standard class to which you want to map your virtual object. </li>
<li>
Click Mark Object button. Use the crosshairs pointer to mark the area of the virtual object. </li>
<li>
An object in the object tree is assigned as the parent of the virtual object. </li>
<li>
Specify a name and a collection for the virtual object. 
</li>
</ul>
<b>
To Disable a Virtual Object</b><br>
<ul>
<li>
Choose <b>Tools > Options</b> or click the <b>Options </b>toolbar button. The Options dialog box opens.
</li>
<li>In the General tab, select the <b>Disable recognition of virtual objects </b>while recording
</li>
</ul>



<b>Removing a Virtual Object</b><br>
<ul>
<li>We can remove virtual objects from were test or component by deleting them from Virtual Object Manager that can be accessed from ToolsàVirtual Objectà Virtual Object Manager 
</ul>

<b>
QTP File System Object
</b><br><br>
The FSO object model is contained in the Scripting type library (Scrrun.dll), supports text file creation and manipulation through the TextStream object. 
<br><br>
The FSO object model gives the server-side applications the ability to create, alter, move, and delete folders, or to detect if particular folders exist, and if so, where. <br><br>

Information about folders, such as their names, the date they were created or last modified, can also be detected. 
<br><br>
Create FSO Objects: FSO Objects can be created using the CreateObject Method. 
	<br><br>
Dim myfso<br>
Set myfso = CreateObject (“Scripting.FileSystemObject”) <br><br>

<b>Creating Text Files using FSO</b><br><br>

CreateTextFile method of FSO helps to create text files.<br><br> 

fsoObject.CreateTextFile (filename [, overwrite [, Unicode]]) as TextStream.<br><br>


Parameters <br>
Filename – The Filename for the file to be created <br><br>

Overwrite – Boolean value indicating whether to overwrite the file if it already exists. If the file is to be overwritten, the value set is true, else false. Blank denotes the files are not overwritten.<br><br>

Unicode – Boolean value indicating the nature of the text file ie., whether the file to be created as a Unicode or an ASCII file.  The value set is True for Unicode, else False. Blank denotes ASCII files. <br><br>

Returns TextStream Object
<br><br>

<b>ReadLine()</b> Method is used to read the contents of a text file. Alternatively, Read() and ReadAll() methods can be used to achieve the same objective. 
<br><br>
ReadLine(): Reads all the characters till the newline character is encountered. I.e., it reads an entire line. 
<br>
Syntax : Object.ReadLine()

<b>Syntax for OpenTextFile() is </b><br><br>

Object.OpenTextFile(filename[, iomode[, create[, format]]])<br><br>

Parameters<br>
<ul>
<li>Filename – Name of the file to be opened.
</li>
<li>Iomode - Optional. The Mode in which the file has to be opened. The value can toggle between these three modes: ForReading, ForWriting, ForAppending 
</li>
<li>Create – Optional. Boolean value that indicates whether a new file can be created if the specified file doesn’t exist. The value is true if new file has to be created, else false. If blank, then new file isn’t created. 
</li>
<li>Format – Optional. Values toggle between 3 states. Whether the file has to be opened as Unicode, opened as ASCII or use the system default
</li>
<li>The DeleteFile() or Delete() Method can be used to delete the file.</li>
</ul>
'.html_safe
render "qtp/qtpintroduction"
	end

	def recoveryscenarios
		@title= "Recovery Scenarios"
		@previous="virtualobjectsfilesystemobjects"
		@next="usefulsnippets"
		@article='<b>QTP Recovery Scenarios </b><br><br>

While running a test in QTP there are certain unexpected events, errors, and application crashes which can distort your run session and distort results. 
<br><br>
This can result in the test run getting suspended until the occurred event has been corrected. 
<br><br>
User may have to again begin the complete test run which can be tedious if the test script is very long or there are more than two or more tests called in the current run.
<br><br>
A Recovery Scenario helps the user as it indicates QTP with regards to the corrective action needed to be taken in case of the unwanted event occurred during the test run.
<br><br>
Example is you can instruct QTP to access internet explorer and open google.com but there is no internet connectivity, you can instruct the test to skip the current activity and move to next.
<br><br><b>
Why Recovery Scenarios?
</b><br><br>
Recovery Scenarios are generally called by QTP on occurrence of any error during the test run.
<br><br>
Conditions where the user can predict any unexpected event, it is recommended to use optional steps or if conditions in the script.
<br><br>
Recovery scenarios should be used only for unpredictable events, or events that you cannot synchronize with a specific step in your test or component.
<br><br><b>
The Wizard
</b><br><br>
A Recovery scenario wizard helps the user in defining recovery scenarios, save them and also associate these to the corresponding tests. 
<br><br>
The path is Tools>Recovery Scenario Manager> New scenario.
<br><br>
A recovery scenario wizard consists of the following;
<br><br>
<ul>
<li>Trigger events </li>
<li>Recovery Operation</li>
<li>Post-Recovery Test Run Option</li>
<li>Name</li>
<li>Finish</li>
</ul>


<b>Trigger Events:</b> Indicates for which event the user needs to add an recovery scenario.<br><br>
<br><br>
Consists of the following events:
<br>
<ul>
<li>Pop-up Window: A window pops up in an opened application during the test run.</li>

<li>Object State: The property values of an object in your application match specified   values. You can specify property values for each object in the hierarchy.</li>

<li>Test run error: A step in your test does not run successfully.</li>

<li>Application crash: An open application fails during the test run.</li>

</ul>
QTP detects a pop-up window and identifies it according to the window title and textual content.<br><br>

In this the user has the option to set Window title and/or contents within the Window making it convenient to QTP in calling the corresponding scenario.<br><br>

The user will have to initially capture the screen user the object spy for identification by QTP.
<br><br>
QTP detects a specific test object state and identifies it according to its property values and the property values of all its ancestors. 
<br><br>
The user will have to identify the object using the Object spy and the corresponding object or parent properties get captured.
<br><br>
Further the user has the option to add or remove certain properties that shall be used by QTP for identification during scenario call.
<br><br>
QTP detects a run error and identifies it by a failed return value from a method. This option consists of a list in the drop down box as shown below.
<br><br>
User selects any one of the error conditions and the corresponding description for that error occurs in the description box.
<br><br>
QTP detects an application crash and identifies it according to a predefined list of applications
<br><br>
When the user selects this trigger event, he gets an list of applications from which he will have to select the applications that might cause a error. Each time this application causes the error the scenario is called.
<br><br>
<b>
Recovery Operations
</b><br><br>
User defines the kind of recovery operation that QTP needs to perform once the event has occurred.
<br>
The different operations are;
<br>
<ul>
<li>Key or mouse operation: The following operations can be performed</li>
<ul>
<li>Clicks Default button or Enter key.</li>
<li>Clicks Cancel button or Esc key.</li>
<li>Click any button on the corresponding screen which the user can highlight by using the Spy available </li>
<li>User can provide a combination of keys which the QTP will operate on the key board.
</li>
</ul>
<li>Close application: The processes declared by the user while defining the Application crash trigger event shall be identified by QTP and closed once this event occurs.
</li>
<li>Function Call Screen: User has a option wherein he can call a function stored in the Library depending upon the type of trigger event and the Select Function option. 
</li>
<li>Restarting Microsoft Windows: This option will lead to sudden termination of your script run and will close all the applications.
</li>
</ul>

<b>Post Recovery Run Options</b><br><br>

The user then gets the option to decide what QTP will perform once the recovery operation is implied. It will operate one of the following below given conditions;
<br>
<ul>
<li>Repeat current step and continue </li>
<li>Proceed to next step</li>
<li>Proceed to next iteration</li>
<li>Restart Current test run</li>
<li>Stop the Current Run</li>
</ul>
'.html_safe
render "qtp/qtpintroduction"
	end

	def usefulsnippets
		@title= "Useful Snippets"
		@previous="recoveryscenarios"
		@next="batchtests"
		@article='<b>QTP Some useful and powerful code snippets</b></br></br>

Here are some sample QTP code snippets which you could use in your programs.</br></br>

<b>
Sample code to open a url in IEXPLORER, FIREFOX, CHROME
</b></br></br>

SystemUtil.Run "iexplore.exe" , url ,,,3</br>
SystemUtil.Run "firefox.exe" , url ,,,3 </br>
SystemUtil.Run "chrome.exe" , url ,,,3</br>

<b>
Sample code to create an excel file</b></br></br>


Set excelobj = createobject("excel.application")</br>
excelobj.Application.Visible = true </br>
excelobj.Workbooks.Add</br>
wait 1</br>
excelobj.ActiveWorkbook.SaveAs  "D:\samplecode.xls"</br>
excelobj.Application.Quit</br>
Set excelobj =nothing</br></br>

<b>
Sample vbs code to open QTP test, run it and then close it
</b></br></br>

Dim QTPObj,QTPTest</br>
Set QTPObj=CreateObject("QuickTest.Application")</br>
If Not QTPObj.Launched then</br>
QTPObj.Launch</br>
End if</br>
QTPObj.Visible=True</br>
QTPObj.Open "D:\test script\TCQ1" </br>
Set QTPTest=QTPObj.Test</br>
QTPTest.Run</br>
QTPTest.Close </br>
QTPObj.Quit </br>
</br>
<b>
QTP code to generate a random number</b></br></br>


x=RandomNumber (0,100)</br>
print x</br></br>
<b>
QTP code to delete a file
</b></br></br>

Set fso = CreateObject("Scripting.FileSystemObject") </br>
fso.DeleteFile("D:\Delete Me Please.txt") </br>
Set fso = Nothing</br></br>

<b>
QTP methods to stop a test
</b></br></br>

ExitTest - Exits the entire Test </br>
ExitRun - is an obsolete (not supported now in newer versions or supported for backward compatibility) ExitTest is the alternative for this, </br>
ExitTestIteration - Exits the current iteration of the test.</br></br>

<b>
QTP code to show nested For Loops</b></br></br>


For i = 0 To 3</br>
 For j = 0 To 2   </br>
print i+j</br>
</br>
Next</br> 
Next</br>

<b>
QTP code to import a data shett and find the row count
</b></br></br>

DataTable.ImportSheet "C:\Documents and Settings\Desktop\Book1.xls","Sheet1","Global"</br>
Msgbox datatable.GetSheet("Global").getrowcount</br>



'.html_safe
render "qtp/qtpintroduction"
	end

	def batchtests
		@title= "Batch Tests"
		@previous="usefulsnippets"
		@next="descriptive"
		@article='<b>QTP Batch Testing i</b>s a process of running several tests in a succession and in a group<br><br>

There are two techniques<br>
<ul>
<li>Test Batch Runner</li>
<li>Manual Scripting</li>
</ul>
<b>
Batch Testing Using Batch Runner
</b><br><br>
<ul>
<li>Run several tests in succession.</li> 

<li>You can save the list as an .mtb file and later on you can include or exclude a test in your batch list from running during a batch run. </li>

<li>Results for each test  are stored in their default location or the specified location.  </li>

<li>To enable Test Batch Runner to run tests, you must select allow other HP products to run tests and components in the Run tab of the Options dialog box</li>

<li>Choose Programs > Quick Test Professional > Tools > Test Batch Runner from the Start menu. The Test Batch Runner dialog box opens</li>
 
<li>Click the Add button or choose Batch > Add. The Open Test dialog box opens. </li>

<li>Select a test you want to include in the test batch list and click Open. The test is added to the list.</li>
</ul>
<b>
Inserting/Removing/Unchecking/Saving Tests
</b><br><br>
<ul>
<li>To insert a test at another point in the list, select the test that is to precede the test you would like to add. When you add the test, it is added above the selected test. </li>

<li>To remove a test from the list, select it and click the Remove button, or choose Batch > Remove. </li>

<li>If you want to include a test in the list, but you do not want the test to be run during the next batch run, clear the check box next to the test name. </li>

<li>If you want to save the batch list, click the Save button, or choose File > Save, and enter a name for the list. The file extension is .mtb.</li>
</ul>
<b>
Run & View Results
</b><br><br>
<ul>
<li>Click the Run button or choose Batch > Run. If Quick Test is not already open, it opens and the tests run sequence begins. Once the batch run is complete, you can view the results for each run</li>

<li>In order to view the result selects the “Result” option from the Test Menu on “Menu bar” of QTP. Select the result file</li>
</ul>
<b>
Manual Test Batch 
</b><br><br>
<ul>
<li>Make Actions of the QTP test scripts (that needs to be run as a part of batch ) as reusable </li>

<li>Create an another QTP test file and call these reusable action in this file  as shown below</li>

<li>To insert or call existing action Select Insert->Call to Existing Actions. Following window would appear.</li>

<li>The result for all the test scripts (action) gets stored either in the temp or specified folder.</li>
</ul>
<b>
The Difference - Test Batch Runner and Running Batch Test Using Manual Script
</b>
<ul>

<li>Test Batch runner tool: For results you have to refer the separate result file for every test script.

<li>Manual Scripting: After execution you will get results for different script in the same window. So it avoid the overhead involve in the checking separate test result file for    every test script.</li>
</ul>
'.html_safe
render "qtp/qtpintroduction"
	end

	def descriptive
		@title= "Descriptive Programming"
		@previous="batchtests"
		@next="frameworks"
		@article='Descriptive Programming provides a way to perform operations on objects that are not present in object repository. <br><br>

How to do it? There are two ways.<br><br>
	<ul>
<li>
Create Description Objects</li>
<ul>
<li>
First a description object is created</li>
<li>
Then unique properties are assigned to it which will identify the object in run time in the application
</li>
</ul>
Ex :    <br>
Dim oDesc ‘Declare an object variable<br>
Set oDesc = Description.Create ‘Create an empty description<br>
<br>
Now Assign Property values<br><br>

oDesc(“type”).value= “text”<br>
oDesc(“name”).value= “userName”<br>
oDesc(“html tag”).value= “INPUT”<br>

<li>
Use Description Strings
</li>
<ul>
<li>
Prepare a string with a tuple of property name and value</li>
<li>Provide this string in within () and it will access the object name</li>
</ul>
Ex : <br>   
Button(“name:=buttonLogin”,”id:=1234”).click<br>
</ul>
To determine which property and value pairs to use, you can use the Object Spy:<br><br>

Go to Tools -> Object Spy.<br>
Select the "Test Object Properties" radio button.<br>
Click on the desired object.<br>
In the Properties list, find and write down the properties and values that can be used to identify the object.<br>

<b>
Advantages:</b><br>
<ul>
<li>
Descriptive Programming based Test scripts are faster in execution than Repository based Test scripts.</li>
<li>
Scripts are portable (we can run these scripts from any machine easily)</li>
<li>
Maintenance is easy (less amount of resources)</li>
<li>
Start Test Execution process even though Application is not ready.</li>
</ul>
<b>
When to Use Descriptive Programming?</b><br>
<ul>
<li>
When you are creating functions in an external file. You can use these function in various actions directly , eliminating the need of adding object(s) in object repository for each action[If you are using per action object repository]
</li>
<li>

The objects in the application are dynamic in nature and need special handling to identify the object. 

</li>
<li>
When object repository is getting huge due to the no. of objects being added. If the size of Object repository increases too much then it decreases the performance of QTP while recognizing a object. [For QTP8.2 and below Mercury recommends that OR size should not be greater than 1.5MB]
</li>
<li>
When you don’t want to use object repository at all. 
</li>
<b>
Child Objects
</b>
<br><br>
ChildObjects method is used to retrieve all objects located inside a specified parent object, or only those child objects that fit a certain programmatic description. 
<br><br>
To retrieve this subset of child objects, you first create a description object, and then you add the set of properties and values that you want your child object collection to match using the Description object.
<br><br>
Use the Description object to create the programmatic description for the ChildObjects description argument. 
<br><br>
After you build a description in your description object, use the following syntax to retrieve child objects that match the description:
<br><br>
Set objSet=TestObject.ChildObjects(Description)

<br><br>


Example<br>

The statements below instruct QuickTest to select all of the check boxes on the Itinerary Web page:<br><br>

Set ObjSet= Description.Create()<br>
ObjSet("html tag").Value = "INPUT"<br>
ObjSet("type").Value = "checkbox"<br>
Set Checkboxes = Browser("Itinerary").Page("Itinerary").ChildObjects(ObjSet)<br>
NoOfChildObjs = Checkboxes.Count<br>
For Counter=0 to NoOfChildObjs-1<br>
Checkboxes(Counter).Set "ON"<br>
Next<br>
'.html_safe
render "qtp/qtpintroduction"
	end

	def frameworks
		@title= "Frameworks"
		@previous="descriptive"
		@next="selenium"
		@article='<b>Test automation framework </b>is an integrated system that sets the rules of automation of a specific product. This system integrates the function libraries, test data sources, object details and various reusable modules. <br><br>

These components act as small building blocks which need to be assembled to represent a business process. <br><br>

The framework provides the basis of test automation and simplifies the automation effort.
<br><br>
<b>
Types of Automation Frameworks</b>

<br><br>
<ul>
<li>
Linear (procedural code, possibly generated by tools like those that use record and playback)</li>
<li>
Structured (uses control structures - typically ‘if-else’, ‘switch’, ‘for’, ‘while’ conditions/ statements)</li>
<li>
Data-driven (data is persisted outside of tests in a database, spreadsheet, or other mechanism)</li>
<li>
Keyword-driven</li>
<li>
Hybrid (two or more of the patterns above are used)</li>
<li>
Agile automation framework
</li>
</ul>
<b>
Key Principles for Automation Framework Design</b></br></br>

<b>
Maintainability and Extendibility</b> - The automation suite would be easily maintainable. </br></br>

Nomenclature of the scripts and functions be kept simple and the code be well commented. </br></br>

The suite also needs to be extendible. This would imply building a common framework and standards on which more enhancements to application or test scenarios can be easily added. 
</br></br>

<b>Customization </b>- Test data would be parameterized into constants or data files. Abstract all variant data and include them in files/ data tables. These should not affect the code.</br></br>
<b>Scalability:</b> Framework would allow scheduling all test scripts or targeted test scripts from different modules for execution single run/test. This provides the flexibility that there is no dependency that different module to be tested or executed separately.</br></br>
<b>
Modularity: </b>Framework would be Modular. Different components of the Framework would be divided into separate modules/ actions. Functions help a lot in this.
</br></br>
<b>
Error Handling: </b>Framework would be capable of handling any kind of unexpected errors.
</br></br>
<b>
Reporting:</b> Framework would generate a comprehensive report which is easy to analyze and can be shared with client.</br></br>
<b>
Explaining the Key Word Driven Framework</b></br></br>

In keyword driven automation framework, focus is mainly on kewords/functions and not the test data. This means we focus on creating the functions that are mapped to the functionality of the application.</br></br>

Main components in keyword driven automation framework </br></br>

<b>Scripts Library:</b> In large automation frameworks there would be plenty of functions and these would be required by many modules in the framework. Therefore the reusable funclions are created and stored as library files.</br>
<b>Object Repository: </b>Collection of local & shared object repositories in the framework.</br>
<b>Test Data: </b>Usually stored in data table itself, can also be stored in external files.</br>
<b>Settings and Environment Variables:</b> A list of important settings are mentioned here,</br>
<ul>
<li>
<li>Object Synchronization timeout</li>
<li>When Error Occurs during run session</li>
<li>Resources - Associated library files</li>
<li>Environment - We need to set up some variables like folder path</li>
<li>Recovery - We must associate the recovery scenario file to the test. Recovery Scenario will handle unexpected events during execution. This will help for smooth execution using QTP.</li>
</ul>
<br>
<b>Reports </b>will display the total number of test cases executed, Total Pass Test cases, Total Failed test cases and total time required to execute the test cases. This will give better picture of QTP Execution.

'.html_safe
render "qtp/qtpintroduction"
	end

	def selenium
		@title= "Qtp Vs Selenium"
		@previous="selenium"
		@article='Why Test Automation?<br><br>
<ul>

<li>Fast and Accurate</li>
<li>Effective</li>
<li>Click once and Run N Times</li>
<li>Modifiable</li>
<li>Reusable</li>
</ul>
In short, Test Automation is super powerful in executing test cases.<br><br>

Lets compare two of the main software’s which are used for automated testing and let you decide which is best for your project<br><br>


The two automation software we compare here are:<br>

<ul>
<li>HP Quick Test Professional</li>
<li>Selenium</li>
</ul><br>
<b>
HP QuickTest Professional (QTP) </b>provides functional and regression test automation for software applications and environments and is one of the leading players in the market when it comes to functional and regression testing. <br><br>
<b>
Key Advantages:</b><br>
<ul>
<li>Uses VBScript as scripting language</li>
<li>Easy to use due to its simple interface and the flow of steps in code (expert view) and step wise view (keyword view).</li>
<li>Different types of record and playback options</li>
<li>No expert level coding experience required</li>
<li>Smooth integration with other HP products like Test management tool HP Quality center.</li>
<li>Detailed and good looking results viewer enables the user to gather, understand, analyze and store results which could be quickly reviewed and even played back in a later point in time.</li>
</ul>
A few challenges:<br>
<ul>
<li>High cost is associated with HP Quick test Professional license. </li>
<li>Do not support Operating Systems other than Windows</li>
<li>QTP doesn’t support the latest browser versions; there is always a lag in the latest browser in the market to be supported by HP QTP.</li>
<li>The resource utilization (CPU & Memory) is considerably high in QTP. </li>
</ul>
<b>
Selenium</b> is a set of different software tools each with a different approach to supporting test automation. It is the most powerful open source automation tool available. <br><br>
<b>
Key Advantages:</b><br><br>
<ul>
<li>Selenium is absolutely free of cost and that gives it a huge advantage over other automation tools.</li>
<li>Selenium supports many languages like Java, C#, Ruby etc and requires skilled expertise build a test automation framework.</li>
<li>Selenium supports almost all major browsers and its latest versions in the market.</li>
<li>Selenium is very powerful in integrating with external applications like Maven, TestNG, Jenkins etc.</li>
</ul>
<b>
A few challenges:
</b><br><br>
<ul>
<li>Selenium supports only browsers and not windows based applications. </li>
<li>You will have to build a complete framework and wouldn’t have the inbuilt features that QTP has.</li>
<li>An expert level coder is required to develop and maintain the code.</li>

</ul>

'.html_safe
render "qtp/qtpintroduction"
	end

end
