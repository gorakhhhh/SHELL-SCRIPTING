Comments in Shell Scripting:-
Comments in shell scripts are used to explain the code and make it easier to understand. They are ignored by the shell during execution.

Types of Comments in Shell:-

1:Single-line Comment (#)
-Starts with # and continues to the end of the line.

-Used for short explanations.
-example:-
# This is a single-line comment
echo "Hello, World!"  # This prints Hello, World!


2:Multi-line Comment (: ' ... ' or <<EOF ... EOF)

-There’s no direct multi-line comment in shell, but you can use:

: '
This is a multi-line comment
It will be ignored by the shell
'
echo "This script is running..."
Another method (using <<EOF):

-Example:-
<<EOF
This is also a multi-line comment.
It is often used for documentation.
EOF
echo "Running the script..."
