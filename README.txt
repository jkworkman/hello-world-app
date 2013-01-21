
Name:           Jake Workman

Project:        Hello World App

Description:    This app allows the user to type a string into a text field and upon hitting the Done button a        label will display the text "Hello 'textstring'".  The string can also be displayed by clicking the Hello button on the bottom of the screen.  If no textstring is designated, upon hitting either button the label will display the text "Hello World".

Response:       The purpose of resignFirstResponder is to notify the receiver that it has been asked to relinquish its status as first responder in its window.  In this case, since the keyboard is dismissed when it loses first responder status, the keyboard dismisses when calling resignFirstResponder.