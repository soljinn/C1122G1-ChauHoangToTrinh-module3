<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
<h1 style="color: red"><%= "Calculator" %>
</h1>
<br/>
<form action="/calculator" method="post">
    <table>
        <tr>
            <td style="color: blueviolet">
                First operand:
            </td>
            <td>
                <input type="text" name="firstOperand">
            </td>
        </tr>
        <tr>
            <td style="color: darkmagenta">
                Operator:
            </td>
            <td>
                <select name="operator" style="color: violet">
                    <option value="+" style="color: darkblue">Addition</option>
                    <option value="-" style="color: deeppink">Subtraction</option>
                    <option value="*" style="color: red">Multiplication</option>
                    <option value="/" style="color: aqua">Division</option>
                </select>
            </td>
        </tr>
        <tr>
            <td style="color: indianred">
                Second Operand:
            </td>
            <td>
                <input name="secondOperand" type="text"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit" value="calculate" style="color: crimson">Calculator</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>