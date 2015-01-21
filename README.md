Comment Validator
===========

This is a gem which will read the comments from files and check if they meet the targeted percentage.

# How to use?

```
commentval <folders (seperate by comma)> <file extnesions (seperate by comma)> <comment threshold>
```

Example:

```
commentval propertyfrontend/ .py 0.9
```

# How does it check for a comment?

It checks if there is either a # or a // in the file. If one of this is found this will count as a comment.
