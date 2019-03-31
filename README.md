# Javascript

[Javascript Glossary](#javascript-glossary)

# Session 1: INTRODUCTION TO JAVASCRIPT WEB DEVELOPMENT

## JavaScript vs. Java

Javascript is NOT JAVA!!!  JAVA and C# are both HIGH LEVEL LANGUAGES WHICH DEMAND A COMPILER TO COMPILE CODE INTO RUNTIME CODE.  Javascript is more of an &#39;interpreted&#39; language which is much more fluid and doesn&#39;t demand a heavyweight compiler but is executed more as a &#39;script&#39; would be executed, line by line.  The Javascript &#39;runtime&#39; engine will run within the browser for example Chrome has a V8 engine which is also used to power NodeJS which executes Javascript both in the browser but also running on the operating system itself natively.

## JavaScript Evolution

 Created 1995

  Brendan Eich from Netscape/Mozilla

 ECMAScript is the &#39;official name&#39; for Javascript

 2005 : explosion with 1) AJAX 2) jQuery

 HTML5

 NodeJS driving forward a completely new era of Javascript

 Current version : ECMAScript 6



## Security Overview

Javascript as such on the CLIENT is NOT SECURE!  You CANNOT TRUST CLIENT-SIDE JAVASCRIPT AS IT COULD BE HACKED OR CHANGED AT ANY TIME.  So form validation etc will have to be performed both on the client but again on the server just to make sure data is safe.   For example in particular with &#39;code injection&#39; attacks where form data is submitted containing \&lt;script\&gt;..\&lt;/script\&gt; or other eg SQL commands.

## JavaScript Versions and Browser Support

Please see [https://en.wikipedia.org/wiki/ECMAScript#Versions](https://en.wikipedia.org/wiki/ECMAScript#Versions) for details of Javascript versions, which are officially called ECMAScript versions now.

Browser support can be a very technical and detailed matter with the best website on the planet to confirm if a feature is supported in a given browser being [http://CanIUse.com/](http://CanIUse.com/) where you can search for an individual feature to check how it is supported – this goes for HTML, CSS and Javascript.

## JavaScript Engines

These are the browser engines which run Javascript.

- Check out this official guide to browser engines at [https://en.wikipedia.org/wiki/Web\_browser\_engine](https://en.wikipedia.org/wiki/Web_browser_engine) and a comparison of engines at [https://en.wikipedia.org/wiki/Comparison\_of\_web\_browser\_engines](https://en.wikipedia.org/wiki/Comparison_of_web_browser_engines)
- Chrome : Blink which is a fork of Webkit which Chrome used to use and is officially the most popular browser engine
- Opera : Blink like Chrome
- Gecko : Mozilla Firefox
- Internet Explorer : Trident
- Edge : EdgeHTML
- Safari : WebKit

# Session 2: LANGUAGE STRUCTURE

## Character Set

For web pages, HTML, CSS and Javascript the default character set is UTF-8 which provides a 2-byte code which can represent any character from any language on the planet, plus some symbols too, which means that in theory any language can be represented in computer form.

ASCII was the primitive one-byte representation of all basic English letters and characters, for example see this page here on ASCII [http://www.ascii-code.com/](http://www.ascii-code.com/) and also here on W3Schools at [http://www.w3schools.com/html/html\_charset.asp](http://www.w3schools.com/html/html_charset.asp)

UTF-8 is also called UNICODE.  There is also a version called UTF-16 which is a character set used in many operating systems.

HTML pages : to use a non-standard character set the code would simply be \&lt;meta charset=&quot;ISO-8859-1&quot;\&gt;

## Case Sensitivity

HTML is CASE INsEnSiTiVe although \&lt;lower\_case\&gt; tags should always be used, for everything!

CSS is CASE INsEnSiTiVe

Javascript is CASE SENSITIVE so you must be EXTRA CAREFUL for example document.getElementById(&quot;x&quot;)



## Layout and Whitespace

Standard programming practice can and should be used to lay out good code for example:

- Declare variables at the top of the code
- Use comments
- White space is not normally an issue but be aware it can cause issues for example if parsing DOM elements then spaces (from your code) can be counted as DOM elements even though they might not be visible or have any effect on the page.  They may influence (1) CSS layout for example firstchildmight be applying to a &#39;space&#39; element (2) arrays of multiple elements eg forms.myForm.length may be affected by non-visible DOM elements
  - See [http://www.w3schools.com/jsref/tryit.asp?filename=tryjsref\_node\_childnodes](http://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_node_childnodes) for details
  - See HTML Whitespace lab also in index.htm

 ![](data:image/*;base64,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)

-
  - The above picture has 5 DOM elements (two paragraphs and three spaces)



## JavaScript Literals

A &#39;literal&#39; is a fixed string that is no longer treated as a variable and cannot be changed without altering the string directly eg by adding or removing characters.  Advanced discussion on literals can be found at [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Grammar\_and\_types](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Grammar_and_types) .

## Identifiers

Javascript identifiers are used to name variables and functions

First character of every Javascript variable/function must be

 Letter of the alphabet (NOT A NUMBER)

 $

 \_

 Note : Numbers are not allowed to start variables, neither are other special characters

Other letters may be the above (letter, $ and \_) plus numbers so \_123 is valid.

camelCase tends to be used in Javascript.

Please see discussion on Javascript syntax at [http://www.w3schools.com/js/js\_syntax.asp](http://www.w3schools.com/js/js_syntax.asp)

## Reserved Words

Javascript&#39;s reserved word list is as follows

|   |   |   |   |   |
| --- | --- | --- | --- | --- |
| abstract | arguments | boolean | break | byte |
| case | catch | char | class\* | const |
| continue | debugger | default | delete | do |
| double | else | enum\* | eval | export\* |
| extends\* | FALSE | final | finally | float |
| for | function | goto | if | implements |
| import\* | in | instanceof | int | interface |
| let | long | native | new | null |
| package | private | protected | public | return |
| short | static | super\* | switch | synchronized |
| this | throw | throws | transient | TRUE |
| try | typeof | var | void | volatile |
| while | with | yield |   |   |



| alert | all | anchor | anchors | area |
| --- | --- | --- | --- | --- |
| assign | blur | button | checkbox | clearInterval |
| clearTimeout | clientInformation | close | closed | confirm |
| constructor | crypto | decodeURI | decodeURIComponent | defaultStatus |
| document | element | elements | embed | embeds |
| encodeURI | encodeURIComponent | escape | event | fileUpload |
| focus | form | forms | frame | innerHeight |
| innerWidth | layer | layers | link | location |
| mimeTypes | navigate | navigator | frames | frameRate |
| hidden | history | image | images | offscreenBuffering |
| open | opener | option | outerHeight | outerWidth |
| packages | pageXOffset | pageYOffset | parent | parseFloat |
| parseInt | password | pkcs11 | plugin | prompt |
| propertyIsEnum | radio | reset | screenX | screenY |
| scroll | secure | select | self | setInterval |
| setTimeout | status | submit | taint | text |
| textarea | top | unescape | untaint | window |





## Operator Precedence

Basic BODMAS precedence will take place eg

(3+2)42+213=????

Brackets first so 3+2=5, multiply by 4 squared = 16 to give 80 then add 21 divided by 7 = 3 to give 83



## Good practice and tips

For example see Google guide to Javascript here

 [https://google.github.io/styleguide/javascriptguide.xml](https://google.github.io/styleguide/javascriptguide.xml)



# Session 3: DATATYPES AND VALUES



## Numbers

 var x=1;

## Strings

 var x = &quot;some string&quot;;

## String Methods

Strings can be joined together using &#39;+&#39; symbol or string1.concat(string2)

Strings can also be treated as arrays of characters and dissected as such.

myString.length will return the length of the string

## Booleans

 var x = true; var y = false;

## JavaScript Functions

Var y = function(){};

Function y(){}

Note that () causes the function to be called straight away.  This can be used to good effect in some callback functions where the function can be named without the brackets, thus is not executed until runtime.

See W3Schools [http://www.w3schools.com/js/js\_functions.asp](http://www.w3schools.com/js/js_functions.asp) and Mozilla for discussion on functions [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions) .

The arrow notation can also be used to define a function

() =\&gt; {}

Param =\&gt; expression when only one parameter is used

## Return

Each function can only return one object so if multiple objects are required to be returned from a function then a JSON object will have to be created and returned

Function x(){

Var y = { a:1,b:2}

Return y

}



## The this Keyword

Default refers to the &#39;window&#39; object so console.log(this===window) will return true by default

This is useful inside an object

 Var myObject= {

  A:1

  B:2

  C:function(){this.A + this.B}

}

This can be useful when used with constructors

 Function myClass(a,b){

    This.a=a;this.b=b;

}

Var myNewObject = new myClass(1,2)      creates new object with myNewObject.a=1   .b=2

&#39;this&#39; object can be set manually using the call(), apply() and bind() methods

  myFunction.call(object,param1,param2) will run myFunction but whatever object is passed in to the function can also be used to reference &#39;this&#39; within the function.

                myFunction.apply(object,[param1,param2])

  var newFunction = myFunction.bind(object)    adds a permanent binding

More detail available at [https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/this](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/this) and [http://javascriptissexy.com/understand-javascripts-this-with-clarity-and-master-it/](http://javascriptissexy.com/understand-javascripts-this-with-clarity-and-master-it/)

## Objects Introduction

Objects are declared using the JSON format

 var myObject = { a:1, b:&quot;mystring&quot; }

 Objects can hold any other data type within it, even other objects and arrays.

 See [http://www.w3schools.com/js/js\_objects.asp](http://www.w3schools.com/js/js_objects.asp) for a basic guide to Javascript objects.

Once created object data is accessed using key-value pairs eg

 myObject.a=1

 myObject.b=&quot;mystring&quot;

## Arrays Introduction

Arrays are declared using

 Var myArray = [1,2,3,&quot;hi&quot;];

Alternatively (not recommended) you can also use

 Var myArray = new Array(1,2,3,&quot;hi&quot;);

Once created the array elements are accessed using a numeric index where zero [0] is the first item.

 myArray[0] = 1

 myArray[3] = &quot;hi&quot;

Javascript arrays can hold different data types

Please see [http://www.w3schools.com/js/js\_arrays.asp](http://www.w3schools.com/js/js_arrays.asp) for basic discussion on arrays.

## Type Conversion

Javascript contains the following data types

-
  - string
  - number
  - boolean
  - function
  - object
    - object
    - array
    - date
  - null              can assign eg to a string
  - undefined             var x;    once declared x is undefined until value is assigned

typeof() returns the type of your object

 String(x)  converts number x to string

 x.toString   converts number x to string

 x.toExponential  to power of 10

 x.toFixed(2)  fixed number of decimal places

 x.toPrecision(3)  string with 3 significant figures

 Number(&quot;1.23&quot;)  converts string to number

 parseFloat(&quot;1.23&quot;)  returns 1.23 decimal number

 parseInt(&quot;1.23&quot;) returns 1 as integer

More detailed discussion at [http://www.w3schools.com/js/js\_type\_conversion.asp](http://www.w3schools.com/js/js_type_conversion.asp)

## Primitive Datatype Wrappers

A primitive is a DATA TYPE THAT IS NOT AN OBJECT AND ALSO HAS NO METHODS.  They also are IMMUTABLE so cannot change.

Objects are collections of properties.  Properties can reference objects or primitives.  Primitives are VALUES ONLY.

Javascript primitive data types

- string
- number
- Boolean            true or false
- Null                   Null
- Undefined       Undefined

See [https://developer.mozilla.org/en-US/docs/Glossary/Primitive](https://developer.mozilla.org/en-US/docs/Glossary/Primitive) for discussion on primitives

And [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data\_structures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures) on discussion on data types

A wrapper can be used to create a new object eg var Twelve = new Number(12) will create a valid number.

Avoid though as unpredictable results eg var myBoolean = new Boolean(false)   will return true

# Session 4: VARIABLES, OPERATORS AND EXPRESSIONS

## JavaScript Variables

  var x = 1;

If used within a function the SCOPE is LOCAL.

If used outside a function the SCOPE is GLOBAL

   let x = 1;  can be used inside a function block and the value is enclosed within that block only (cannot be accessed from outside)

Variables are &#39;hoisted&#39; so put at the front of the code, no matter where you declare them.

For efficiency declare multiline eg var a=1,b=2;

Declare  var x;

Initialize  x=1;

const x = 1;   value cannot be changed

In general let is now preferred over var because the intention of scope is clear.  But const can also be used – see interesting discussion at [https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75#.gx4l9m2jr](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75#.gx4l9m2jr) where const is recommended for all variables that are not intended to change.

Var summary

Var declares all variables;

 Let is a newer alternative and can be used to generate cleaner code

 Const can be used for variables whose value is never intended to change

 Var outside function =\&gt; global scope

 Var inside function =\&gt; local scope



## JavaScript Expressions

- Expression PRODUCES A VALUE LIKE myvar or 1+2
- Statement performs an action like looping through a variable many times

See [http://www.2ality.com/2012/09/expressions-vs-statements.html](http://www.2ality.com/2012/09/expressions-vs-statements.html) for a more detailed discussion



## Arithmetic Operators

+ / -

++ / --  add / subtract one

%   remainder after division 10%3=1

\*\*  to the power of eg 2\*\*3 = 2x2x2 = 8



## Relational Operators

Comparing one item to another and outputting a Boolean true or false depending if relationship is valid or not.

 Var myObject={a:1,b:2}

 &quot;a&quot; in myObject   returns true

## String Operators

 + will concatenate strings

## Logical Operators

 &amp;&amp; AND                      false &amp;&amp; false   false

 ||    OR                        true || false     true

 !       NOT                      !(true)   false

## Bitwise Operators

Act on binary numbers with each individual binary bit being acted upon in a certain way

AND  &amp; 1&amp;1=1  but 1&amp;0=0

OR         | 1&amp;0=1 but 0&amp;0=0

See more detail at [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions\_and\_Operators#Bitwise\_operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators#Bitwise_operators)



## Assignment Operators

These assign values

 =  a=6;  assigns value 6 to a

 +=  a=a+6

Details on all assignment operators at [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions\_and\_Operators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators)

## The global Object

DOM object operates with the global object being called the &#39;Window&#39; object.  All other objects are children of this.

With variables they can be declared outside of any function and this makes them available to the global namespace ie the root Window object.

 var a=7;                  initialize a global object

 window.a   =\&gt; will return 7

Note that by wrongly declaring an object without var will also make it a global object.  This can be prevented by adding the syntax &#39;using strict&#39; at the start of your Javascript file to force a stricter version of Javascript which prevents such errors from happening unnoticed.

# Session 5: JAVASCRIPT CONTROL STRUCTURES

## If/Else

 if {}

        else if {}

        else {}

## For/For In

 for (var i=0;i\&lt;10;i++){ // i }

        var myObject={a:1,b:2}, item;

        for(item in myObject){ console.log(myObject[item])}

## While

 var x=0;

        while(x\&lt;10){//do this;x++;}

## Do..While

        var x=0;

        do{//do this;x++}

        while(x\&lt;10);

## Switch

 var x = 3;

 switch(x){

  case 1://do this;break;

  case 2: //do this;break;

  case 3: // do this ; break;

  default: // do this;

 }

## Break and Continue

 for (var i=0;i\&lt;10;i++){

  If(i=7){break;}                out of loop

  If(i=3){continue;}          break out of current loop and start next one straight away

 }

  See [http://www.w3schools.com/js/js\_break.asp](http://www.w3schools.com/js/js_break.asp) for clarification



## JavaScript Exception Handling

 try {

  Myundefinedfunction();   // will generate a system exception

 Throw(&#39;an error&#39;)    // manually throw exception

}

 catch(exception e){

 Console.log(e);   // also e.data, also e.type

}

 finally{}

See showcase/js\_35\_throw\_exception.htm as an example of manually throwing an exception and catching it







# Session 6: OBJECTS AND ARRAYS

## Object



## Common Properties and Methods

## Dates, Times and Timers

 var d = new Date();   // standard way of creating a new date object

Displaying dates

d.getDay()   Returns 0-6 where 0 is a Sunday and 6 is a Saturday

d.getDate() Returns 1-31 calendar date

d.getMonth Returns 0-11

d.getFullYear Returns eg 2016

d.getHours/Minutes/Seconds/Milliseconds()

d.getTimeZoneOffset  Returns time zone difference away from GMT

d.getTime  Returns milliseconds since 1 Jan 1970

d.set….   Sets time

 See [http://www.w3schools.com/jsref/jsref\_obj\_date.asp](http://www.w3schools.com/jsref/jsref_obj_date.asp) also [http://www.w3schools.com/js/js\_dates.asp](http://www.w3schools.com/js/js_dates.asp) for fuller discussion

 See Mozilla reference at [https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global\_Objects/Date](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Date)



## Classes and Prototyping

Javascript can do classes but they are not fully supported in all browsers.  Javascript itself it not an OOP so does not support classes natively.  In order to create classes Javascript uses functions to do the same thing.

 Declare a class

  var myClass = function(){}

 Instantiate a class

  var myNewObject = new myClass()

 Declare a class with properties

  var myClass=function(x,y){

                        this.x=x;

                        this.y=y;

                }

 Instantiate : var myNewObject = new myClass(1,2);

Class Methods

Can be added in the class declaration body but better for memory usage not to do this but to delcare afterwards as a new prototype object. Prototypes can be used to extend any Javascript object and not just classes.

 myClass.prototype.myMethod = function(){  console.log (this.x) }

 Call the method using myNewObject.myMethod() which in this case will log this.x which is 1 to the console.

Please see discussion at [https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction\_to\_Object-Oriented\_JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Introduction_to_Object-Oriented_JavaScript) for further details including inheritance.

Static Methods can be used which like in regular OOP are only valid when called as part of the class and not as part of an instantiated object.  See [https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Classes](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Classes) for details.

Extends keyword also exists to either extend a class or provide Parent-Child inheritance features similar to regular OOP inheritance.  More details again at [https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Classes](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Classes)



## Arrays

## Array Methods

 Size of array

  myArray.length;

 Add and remove items from an array

  myArray.push(x)  add to end

  myArray.pop()   remove item from end

  myArray.unshift(x)  add to start

  myArray.shift()   remove (shift) item from the start of the array

 Output array items as a string

  myArray.join()

 myArray.sort()

 myArray.reverse()

 myArray.indexOf(&#39;hi&#39;)   Search the array for this element and return position of hit

 myArray.forEach()   Call a function for each array element

  myArray.forEach(function(item,index,array){   }    //index=0,1,2 etc, item will be value at each index.



# Session 7: JAVASCRIPT FUNCTIONS

## Defining Functions

 var y = function(){}

 () =\&gt; {}

 function y(){}

## Invoking Functions

 y don&#39;t call the function right now

 y() call and invoke the function right now

## Functions as Data

 Functions can be treated just the same as any other object, and if they return data objects that data is the same also

## Anonymous Functions

 Named functions have traceability for example when doing performance measurements we can observe the names of functions which are consuming processing resources.  However it is not always best to have named functions; in some instances it may be the best thing to use anonymous functions for example when performaing a loop over and over again.  Anonymous functions are just created and called in the same way as other functions

 \*\*

## Passing Arguments to Functions

 var y = function(a,b){}

        var z = y(1,2)

# Session 8: INTRODUCTION TO REGULAR EXPRESSIONS

## The RegEx Object

Regular expressions permit us to do input validation with specific validation types catering for every conceivable different type of text and number string including special characters.

Regular Expressions come natively in HTML5 now with the input tag having also a &#39;pattern&#39; tag with the syntax

\&lt;input type=&quot;text&quot; pattern=&quot;[A-Za-z]{3}&quot;\&gt;

Please see [http://www.w3schools.com/tags/tryit.asp?filename=tryhtml5\_input\_pattern](http://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_pattern) for a working demo.

## Methods and Usage

As well as the native HTML usage of regular expressions Javascript also permits internal checking of field values against a given Regular Expression.  For these purposes we have a new data type called Regular Expression whose value takes the form / / where in between the slashes are whatever validation is required.

The syntax would be var myRegExp =/pattern/  where pattern consists of a series of letters and characters to represent the pattern to check against.

The simplest method would be to check for one string within the input and this would be coded

 var myRegExp = /mystring/

This would find one match but to find multiple matches the /g can be added ie

 var myRegExp = /mystring/g

See details at [http://www.w3schools.com/jsref/jsref\_obj\_regexp.asp](http://www.w3schools.com/jsref/jsref_obj_regexp.asp)

## Patterns Matching Examples

Please see sites [https://regexone.com/](https://regexone.com/) and [http://regexr.com/](http://regexr.com/) for good places to do this dynamically online before building your own offline.

Simple validations would include

One number        [0-9]

       \d

One letter      [a-zA-Z]

Two letters      [0-9]{2}

Two letters and two numbers     [a-zA-Z]{2}[0-9]{2}

nn-AA where nn is 2 numbers and AA is 2 letters    [a-zA-Z]{2}-[0-9]{2}

Alphabetic or numeric input    [a-zA-Z0-9]

       \w

Alphabetic, numeric including symbols but not spaces \S   (capital S)

Space       \s

Match only at the start of the expression  ^   eg   ^[0-9]{4}  matches 4 numbers at start only

Match only at the end of the expression   $   eg  [0-9]{4}$ matches last 4 numbers at end only

Match multiple characters (one or more)  +   eg \w+  will match multiple letters

Match zero or more      \*     b\w\*  will match b, be and brown

Match 3 or more     {3,}

Match 0 or 1 so item becomes optional   ?   colou?r will match color and colour as u optional

Match  OR       |

## Regular Expressions Tools

As mentioned above please see the sites [https://regexone.com/](https://regexone.com/) and [http://regexr.com/](http://regexr.com/) to get started with some great examples of Regular Expressions.

# Session 9: BROWSER-BASED JAVASCRIPT

## The Window Object

The Window Object is the root object in the DOM.  All elements are sub-elements from this root object.

The DOM hierarchy goes

Window =\&gt; Document =\&gt; HTML =\&gt; BODY =\&gt; DIV =\&gt; CONTENT

Documents can be referenced by their position in the DOM for example form elements can be referenced

Document.myForm.childNodes[1] etc if necessary although normally this would not be required.  However if pages are going to be generated dynamically it might be very important to be able to count and iterate through the elements of a DOM object using this method.

Details of all methods supported by the window object are to be found here [http://www.w3schools.com/jsref/obj\_window.asp](http://www.w3schools.com/jsref/obj_window.asp)

## JavaScript Event Handling

Events are the driving force behind the success of today&#39;s Javascript.

Events can be defined in two ways.

Firstly the straightforward way you are probably used to:

\&lt;input type=submit onclick=&quot;fn\_run\_this\_validation()&quot; /\&gt;

Other simple events like this would be onclick, ondblclick, onmouseover, onmouseout, onkeydown, onkeyup, onkeypress, onload, onchange.  A full list of &#39;on&#39; Javascript events can be found here [http://www.w3schools.com/jsref/dom\_obj\_event.asp](http://www.w3schools.com/jsref/dom_obj_event.asp) and some full examples would be found here [http://www.w3schools.com/js/js\_events\_examples.asp](http://www.w3schools.com/js/js_events_examples.asp)

However it is possible to add &#39;event listeners&#39; in code outside of the HTML.  This is, in general, considered better practice so it would be best practice to write in the HTML

\&lt;input id=&quot;submit\_form&quot; type=&quot;submit&quot; value=&quot;submit&quot;/\&gt;

Then in Javascript or jQuery code add an event listener which would have the syntax

document.getElementById(&#39;x&#39;).addEventListener(&quot;click&quot;,function(){ // do this });

Notice that &#39;onclick&#39; has now become &#39;click&#39; where the difference will be &#39;onclick&#39; is the event handler and &#39;click&#39; is the event to listen for.

## JavaScript Form Handling

In order to handle a form correctly the \&lt;submit\&gt; button has to have the following syntax

\&lt;submit type=&quot;submit&quot; onsubmit=&quot;return fnsubmit()&quot;\&gt;

The return command gives the form handling code (Javascript) the ability to return either true or false and let the form submit (return true) or not (return false). This allows form validation to take place and to stop the submission of the form when the form is in error.

The function code would be a standard function with the syntax

function fnsubmit(){

 var returnBoolean = false;

 // code to validate form; if valid then set returnBoolean = true;

 return returnBoolean;

}

This will permit the form code to return either true or false.

## The Document Object Model

Elements can be selected, inserted, changed and appended amongst other things, into the DOM.

For example to create an element one would use the syntax

document.createElement . . .

To append an existing item into the DOM one could use appendChild where one would have to select an item first, then append the new item to the selected item.

When selecting items in the DOM items can be selected individually with an ID or multiple items can be selected eg by className (document.getElementsByClassName) or for example by tagName (document.getElementsByTagName);

## Cookies



## Alternative Storage Options



# Session 10: JAVASCRIPT TOOLS

## Profiling JavaScript

Javascript can be &#39;profiled&#39; to view the slow parts of the page.

For example Chrome, by hitting F12 and then choosing the &#39;Timeline&#39; tab brings up this tool, already built-in.

Links for reference are

[https://developers.google.com/web/tools/chrome-devtools/evaluate-performance/timeline-tool#make-a-recording](https://developers.google.com/web/tools/chrome-devtools/evaluate-performance/timeline-tool#make-a-recording)

[https://developers.google.com/web/tools/chrome-devtools/evaluate-performance/timeline-tool#profile-js](https://developers.google.com/web/tools/chrome-devtools/evaluate-performance/timeline-tool#profile-js)

To record a timeline hit F12 =\&gt; Timeline =\&gt; CTL E to start and stop the recording.  To avoid &#39;noise&#39; from plugins (Chrome extensions) either use Incognito mode or create a new user profile (either new user or completely erase all existing Chrome settings).  Keep the recording as short as possible.

Once recorded, the timeline may be examined by zooming in and out to the desired degree of complexity in order to view which code has been executing and taking up time.

You can select one item in order to get more detail below.

Firebug in Firefox has similar tools [https://developer.mozilla.org/en-US/docs/Tools/Performance](https://developer.mozilla.org/en-US/docs/Tools/Performance)



## Firebug

Firebug is the equivalent of F12 for Chrome and has to be enabled for Firefox before it can be used.

[http://getfirebug.com/](http://getfirebug.com/)

Details on how to use firebug here [https://getfirebug.com/whatisfirebug](https://getfirebug.com/whatisfirebug)

Details on profiling here [https://getfirebug.com/javascript](https://getfirebug.com/javascript) - click on Console then Profile to activate profiling, then click on Profile again to stop profiling and display a report on which functions have been called how many times etc.

## Fiddler

Fiddler is a paid performance tool but has a free offering which may be downloaded if you provide your email address.

Fiddler provides an active display of all web calls being made to and from your computer, with a detailed view of activity and protocols etc.

Install from [http://www.telerik.com/](http://www.telerik.com/) and choose &#39;Fiddler&#39; in the Products menu.

## YSlow

YSlow as the name suggests is a tool for finding out why your page is slow!

Checking out the github repo at [https://github.com/marcelduran/yslow/issues](https://github.com/marcelduran/yslow/issues) it is not clear if this tool is still under active development or not (probably not).

However the tool runs and gives some amazing suggestions based on its analysis of your code which has run, for example combining CSS stylesheets, using CDN networks to deliver content, tips to make content cacheable etc

## Other JavaScript Tools

[http://jqueryui.com](http://jqueryui.com) provides some great ideas for providing jQuery features with minimal coding effort

Google Web Toolkit compiles Javascript from Java but has the advantage of optimising the Javascript for all browsers.  Info and download the SDK at [http://www.gwtproject.org/overview.html?csw=1](http://www.gwtproject.org/overview.html?csw=1)

General overview of critical Javascript tools that a professional web developer today would be getting involved with are listed here [https://www.sitepoint.com/essential-tools-libraries-modern-javascript-developers/](https://www.sitepoint.com/essential-tools-libraries-modern-javascript-developers/)

# Session 11: JAVASCRIPT EXTRAS

## NodeJS

NodeJS can be used to execute Javascript both on the server and on the client, thus removing the need for a further language to get involved.  This &#39;native&#39; processing of Javascript requests between a client and a server can allow for a great speed increase of background delivery, as node processes can take up a very small memory footprint.  Node is extremely popular today and has taken off in a big way.  Huge libraries available completely open source under MIT licence are available for free download at [https://www.npmjs.com/](https://www.npmjs.com/) .  Source code for NodeJS is found at [https://nodejs.org/en/](https://nodejs.org/en/) and may be downloaded and installed here. Once installed, any node application can be run just by typing &#39;Node \&lt;myapp.js\&gt;.

## AJAX Asynchronous Javascript and XML

Is the traditional way to update a web page without fully refreshing the page.



## Working with Structured Data

The web has defaulted to using first XML as the default structural way of passing data across the web, and also using PHP to execute MYSQL calls (or C# to execute SQL calls) but subsequently has levelled out using JSON as the default playing ground for sending data around the web.  If in doubt JSON should be used as it also is the default data structure in the newer No-SQL databases such as MongoDB.  These databases can cope with higher throughput of data than traditional SQL databases.

# JavaScript Libraries/Frameworks

## Intro

Javascript frameworks undergird SPA Single Page Applications which are kept in memory unlike traditional HTML applications which often are &#39;stateless&#39;.

## Angular.JS

Created 2009 by Google

Extends HTML attributes using Angular &#39;directives&#39;

Two-way data binding is at the core of Angular.  When data is changed / entered on a form this goes through to the model, and vice-versa.

## React.JS

This is a competitor to Angular.js

React is behind Instagram and Facebook and is developed mostly by Facebook.

Released 2013.

Embodies a &#39;Virtual DOM&#39;

Focuses on the View part of MVC

Flux and Redux are part of the React suite of tools

## Ember.JS

Released 2011

MIT License

Created fastboot.js module

Could session 12 (Using JQUERY) be replaced with one that looks more at frameworks to help structure JavaScript (e.g. Model – View – View Model MVVM) as opposed to a library of useful functions. Possibly giving a quick overview of  Angular, React or something similar to show the team how they work?&quot;



Use of Javascript In The World Today

Javascript is in nearly every web page and has superceded all other web languages.

[https://w3techs.com/diagram/market\_technology/cp-javascript](https://w3techs.com/diagram/market_technology/cp-javascript)

 ![](data:image/*;base64,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)

Javascript on the SERVER still has a long way to go, but is GAINING GROUND FAST!

[https://w3techs.com/diagram/market/programming\_language/10](https://w3techs.com/diagram/market/programming_language/10)

 ![](data:image/*;base64,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)

# Appendix

## Direct Web Remoting (DWR)

Not in active development; best perhaps avoided unless essential eg make a legacy Java application talk to a web page.  Permits a server to generate Javascript code from Java and send to browser for rendering.  Also permits the client to make calls to server which is running Java from a client which is running Javascript.  The mechanism underlying the calls is AJAX.

Technology may be downloaded here [http://directwebremoting.org/dwr/index.html](http://directwebremoting.org/dwr/index.html) .

## AHAH

AJAH is a subset of AJAX with reduced capabilities attempting to do the same thing but instead of using XML as the carrier it uses HTML.  By including a file called ahah.js in your project which is only 20 lines long you can have a simpler form of AJAX working.

Links for further investigation

 [http://www.openjs.com/articles/ajax/ahah\_asynchronous\_html\_over\_http/](http://www.openjs.com/articles/ajax/ahah_asynchronous_html_over_http/)

 [http://microformats.org/wiki/rest/ahah](http://microformats.org/wiki/rest/ahah)

 [http://www.xfront.com/microformats/AHAH.html](http://www.xfront.com/microformats/AHAH.html)

 Example at

[http://www.xfront.com/microformats/examples/ahah/example01/Waldorf-Astoria-Factsheet.html](http://www.xfront.com/microformats/examples/ahah/example01/Waldorf-Astoria-Factsheet.html)



## Javascript Glossary

[Google Scripting](#google-scripting)



# Google Scripting

It is possible to email from Google Sheets.  See this code as an example

```javascript
function myFunction() {
  var range, data, sheet, spreadsheetDocument, startRow, startColumn, numRows, numColumns, message;
  
  spreadsheetDocument = SpreadsheetApp.openById("1vy0A_Gu8u_Ba5tQbCcEbjuly0BTb6QVW7CKOIl47LJQ");
  sheet = spreadsheetDocument.getSheetByName('Daily Tasks'); 
  startRow = 1;
  startColumn = 1;
  numRows = 100;
  numColumns = 53;
  range = sheet.getRange(startRow,startColumn,numRows,numColumns); 
  data = range.getValues();
  message = '';
  message += '===============\nDaily Tasks To Complete\n========\n\n\n\n';
  for (i in data){
    var row = data[i];
    if (row[0].length>0) {
        message += row[0];
        message += '\n\r';
        counter++;
    }
  } 
  message += '\n\n\n\n===========\nDaily Stats\n===========\n\n\n\n';
  sheet = spreadsheetDocument.getSheetByName('Summary');
  for (var i = 2; i <= 20; i++){
    range = sheet.getRange(2,i);
    data = range.getValue();
    data =  Math.round(data * 100);
    message += data + '% : ';
    range = sheet.getRange(1,i);
    data = range.getValue();
    message += data + '\n\n';
  }
  



  
  
  message += '\n\n\n\n=====\nWeekly Stats\n=======\n\n\n\n';
  var range = sheet.getRange("I1");
  var data = range.getValue();
  message += data + ': ';
  var range = sheet.getRange("I2");
  var data = range.getValue();
  message += data + ': ';
  var lastRow = sheet.getMaxRows();
  var cellValue = "I" + lastRow;
  var range = sheet.getRange(cellValue);
  var data =  range.getValue();
  data =  Math.round(data * 100);
  message += data + '% Weekly Tasks Done';
  message += '\n\n';

 
  
  
  message += '\n\n\n\n==========\nMonthly Stats\n===========\n\n\n\n';  
  // Monthly Stats 
  var sheet = spreadsheetDocument.getSheetByName('Monthly Tasks');
  var lastRow = sheet.getMaxRows();
  // October
  var cellValue = "C" + lastRow;
  var range = sheet.getRange(cellValue);
  var data =  range.getValue();
  data =  Math.round(data * 100);
  message += data + '% October Monthly Tasks Done';
  message += '\n\n\n\n\n';  

  
  
  
  message += '\n\n\n\n======\nCount Number Of Tasks\n========\n\n\n\n';   
  var sheet = spreadsheetDocument.getSheetByName('Tasks'); 
  var startRow = 1;
  var startColumn = 1;
  var numRows = 2000;
  var range3 = sheet.getRange(startRow, startColumn, numRows);
  var data = range3.getValues();
  var counter = 0;
  for (i in data){
    var row = data[i];
    if (row[0].length>0) {
        if(row[0] === 'Done November'){
          break;
        }
        message += row[0];
        message += '\n\r';
        counter++;
    }
  }

  
  // Set value
  spreadsheetDocument.getSheetByName('Summary').getRange('B17').setValue(counter);
 
  // Send email
  var emailAddress = 'philanderson888@hotmail.com'; 
  var subject = 'Regular Daily Tasks';    
  MailApp.sendEmail(emailAddress,subject,message);  
```
