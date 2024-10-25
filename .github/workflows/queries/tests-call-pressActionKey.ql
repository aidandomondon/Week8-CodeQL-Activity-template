/**
 * @description Find functions called "pressActionKey"
 * @kind problem
 * @id javascript/function-called-pressActionKey
 * @problem.severity recommendation
 */
import javascript

predicate isPressActionKey(FunctionDeclStmt func) {
    func.getName() == 'PressActionKey';
}

from FunctionDeclStmt func
where isPressActionKey(func)
select func, "Found function named pressActionKey"
