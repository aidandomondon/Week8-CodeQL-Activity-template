/**
 *  @description Finds functions that are longer than 10 lines long.
 *  @kind problem 
 *  @id javascript/functions-longer-than-10-lines
 * @problem.severity recommendation
 */
import javascript

predicate longerThan10Lines(FunctionDeclStmt func) {
    return func.getNumLines() > 10
}

from FunctionDeclStmt func
where longerThan10Lines(func)
select func, "Found function longer than 10 lines": + f.getName()