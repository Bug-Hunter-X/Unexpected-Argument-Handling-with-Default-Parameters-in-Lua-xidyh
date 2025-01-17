# Lua Unexpected Argument Handling Bug

This repository demonstrates an unexpected behavior in Lua when using default parameters with optional arguments.  The `foo` function in `bug.lua` is intended to accept two optional parameters, `a` and `b`, which default to 10 and 20 respectively.  However, if more arguments than expected are provided, the extra arguments are silently ignored instead of producing an error.

The `bugSolution.lua` file shows a modified version of `foo` which handles extra arguments more gracefully, raising an error to make the unexpected behavior explicit.