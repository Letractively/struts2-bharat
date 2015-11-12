# Freemarker Quick Reference
# Introduction #

Freemarker quick reference

## Data-Model at a glance ##

Freemarker Data-model is basically a tree.
```
(root)
  |
  +- animals
  |   |
  |   +- mouse
  |   |   |   
  |   |   +- size = "small"
  |   |   |   
  |   |   +- price = 50
  |   |
  |   +- elephant
  |   |   |   
  |   |   +- size = "large"
  |   |   |   
  |   |   +- price = 5000
  |   |
  |   +- python
  |       |   
  |       +- size = "medium"
  |       |   
  |       +- price = 4999
  |
  +- test = "It is a test"
  |
  +- whatnot
      |
      +- because = "don't know" 

```
The variables can be treated as directories. The root, animals, elephant, python, whatnot etc.. are called **hashes**. hashes store other variables by a lookup name eg. "animals","mouse" or "price".

The variables that store a single value (size, price, test and because) are called **scalars**.

When you want to use a subvariable in a template, you specify its path from the root, and separate the steps with dots. To access the price of a mouse you write animals.mouse.price.

When you put the special ${...} codes around an expression like this, you are telling FreeMarker to output the corresponding text at that point.

There is one more important kind of variable: **sequences**. They are similar to hashes, but they don't store names for the variables they contain. Instead, they store the subvariables sequentially, and you can access them with a numerical index. For example, in this data-model, animals and whatnot.fruits are sequences:

```
(root)
  |
  +- animals
  |   |
  |   +- (1st)
  |   |   |
  |   |   +- name = "mouse"
  |   |   |
  |   |   +- size = "small"
  |   |   |
  |   |   +- price = 50
  |   |
  |   +- (2nd)
  |   |   |
  |   |   +- name = "elephant"
  |   |   |
  |   |   +- size = "large"
  |   |   |
  |   |   +- price = 5000
  |   |
  |   +- (3rd)
  |       |
  |       +- name = "python"
  |       |
  |       +- size = "medium"
  |       |
  |       +- price = 4999
  |
  +- whatnot
      |
      +- fruits
          |
          +- (1st) = "orange"
          |
          +- (2nd) = "banana"  
```


Scalars can further divided into these categories:


  * String: Text, that is, an arbitrary sequence of characters such as ''m'', ''o'', ''u'', ''s'', ''e'' above. For example the name-s and size-s are strings above.

  * Number: It's a numerical value, like the price-s above. The string "50" and the number 50 are two totally different things in FreeMarker. The former is just a sequence of two characters (which happens to be readable as a number for humans), while the latter is a numerical value that you can use, say, in arithmetical calculations.

  * Date/time: A date or time. Like the date an animal were captured, or the time the shop opens.

  * Boolean: A true/false (yes/no, on/off, etc.) thing. Like animals could have a protected subvariable, which store if the animal is protected or not.

### Template Syntax ###
  * ${...}: FreeMarker will replace it in the output with the actual value of the thing inside the curly brackets. They are called interpolations.
  * FTL tags (for FreeMarker Template Language tags): FTL tags are a bit similar to HTML tags, but they are instructions to FreeMarker and will not be printed to the output. The name of these tags start with #. (User defined tags start with @)
  * Comments: Comments are similar to HTML comments, but they are delimited by <#-- and -->. Anything between these delimiters and the delimiter itself will be ignored by FreeMarker, and will not be written to the output.