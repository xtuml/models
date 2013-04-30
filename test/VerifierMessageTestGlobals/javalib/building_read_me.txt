To rebuild these jar files:

_- First, open the classpath file and remove the attribute:

 excluding="**/*Jar*.java"

_- Now, use Export > jar on this project twice:

_- First, to replace resources.jar:
_- Uncheck everything in the jar export wizard except packages:
_- resourcetester
_- resourcetester.icons

_- Then to replace MessageTest.jar:
_- Uncheck everything in the jar export wizard except classes which contain the
   string "Jar" in the name, EXCEPT those elements in the resourcetester and
   resourcetester.icons packages.

_- Now restore the classpath file from the repository.
_- Clean and rebuild the project.
_- Delete the resourcetester folder under the bin folder of the project.
_- Check the project back in.