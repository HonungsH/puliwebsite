<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
<div class="container">
    <form name='f' action="login" method='POST'>
        <table>
            <tr>
                <td>User:</td>
                <td><input type='text' name='username' value=''></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' /></td>
            </tr>
            <tr>
                <td><input name="submit" type="submit" value="submit" /></td>
            </tr>
        </table>
    </form>
</div>
</body>

<%@ include file = "fragments/footer.jsp" %>
</html>
