# DeprecationAssistant

Have it happened to you that someone had deprecated a method that you are using? Then you are getting a deprecation warning. And probably you've noticed that quite often the body of a deprecated method contains the actual call to the new implementation. In this case you may be thinking: why something cannot just copy the body of the deprecated method into the place where I call it?

Well, this is exactly what DeprecationAssistant is there for. It adds new debug action buttons that allow you to inline the body of a deprecated method in the place where you are calling it from.
