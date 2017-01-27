Using the MASL diff tool and formatter
======================================

prev: [Export a MASL project](exercise7.md) | [index](README.md)

## Purpose

This exercise will teach the student how to use the MASL diff tool to compare
MASL models and to use the MASL formatter to format MASL.

## Instructions

#### Using the diff tool

In this example, we will diff the _Game_ domain that we originally converted
with the _Game_ domain that we exported after making changes.

1. Open a new terminal window and navigate to the `~/xtuml` directory.  
2. Run the diff tool with the following command:  
    `BridgePoint/tools/masl/masldiff models/raven/masl/Game/ models/raven/xtuml/Game/masl/Game/`  
3. You will see some output from the `diff` utility  
4. Run the command `ls` in the terminal. You will notice two new directories
`left.masldiff` and `right.masldiff`. This is where the diff tool outputs
formatted MASL  
5. We can now use a compare tool of our choice to compare the MASL. For this
demonstration, we will use `vimdiff`. Run the command:  
    `vimdiff left.masldiff/Game.mod right.masldiff/Game.mod`  
6. Observe the differences from the changes we made to the model  

#### Using the MASL code formatter

The MASL code formatter is run automatically by the MASL exporter and the MASL
diff tool. You can run the formatter standalone as well.

1. Open `~/xtuml/models/raven/masl/unformatted/Game.mod` in a text editor. You
will notice that this file is not formatted well. We will format this file with
the MASL code formatter  
2. from the `~/xtuml` directory, run the command:  

    ```
    java -cp BridgePoint/tools/masl/lib/MASLParser.jar:BridgePoint/tools/masl/lib/antlr-3.5.2-complete.jar MaslFormatter -r < models/raven/masl/unformatted/Game.mod > Game.mod
    ```

3. This `java` invocation has 3 parts:  
    * We must specify the classpath with `-cp` and point to the `jar` files in masl tools library  
    * We must specify the main class `MaslFormatter`  
    * We must give the application arguments
4. `-r` is a flag to reorder the model elements and group all
the similar model elements together  
5. `-s` (not used in this example) is a flag to sort the model elements  
6. `-t` (not used in this example) specifies the tab width. Default is 2  
7. `-i` specifies the input directory  
8. `-o` specifies the output directory  
9. Note that the `-i` and `-o` options are only used when formatting whole
directories  

Open up `Game.mod` and view the formatted result.
