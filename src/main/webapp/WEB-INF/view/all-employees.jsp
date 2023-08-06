<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h2 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 8px 14px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            transition-duration: 0.4s;
            cursor: pointer;
            border-radius: 3px;
        }

        .button:hover {
            background-color: #45a049;
        }

        .add-button {
            background-color: #428bca;
        }

        .add-button:hover {
            background-color: #337ab7;
        }

    </style>
</head>

<body>
<h2>All Employees</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}" />
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}" />
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="update" onclick="window.location.href = '${updateButton}'" class="button" />

                <input type="button" value="delete" onclick="window.location.href = '${deleteButton}'" class="button" />
            </td>
        </tr>
    </c:forEach>
</table>
<br>

<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'" class="button add-button" />
</body>

</html>