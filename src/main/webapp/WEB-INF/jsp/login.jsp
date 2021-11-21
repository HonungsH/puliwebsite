<%@page pageEncoding="UTF-8" %>

<%@ include file = "fragments/header.jsp" %>
<%@ include file = "fragments/navigation.jsp" %>

<body>
<div class="container">
    <form name='f' action="login" method='POST'>
        <table>
            <tr>
                <td class="pt-4 pr-2">Användarnamn:</td>
                <td class="pt-4"><input type='text' name='username' value=''></td>
            </tr>
            <tr>
                <td class="pt-4">Lösenord:</td>
                <td class="pt-4"><input type='password' name='password' /></td>
            </tr>
            <tr>
                <td class="pt-4"><input style="height: 50px; width: 100px" name="submit" type="submit" value="Logga in" /></td>
            </tr>
        </table>
    </form>
</div>
</body>

<%@ include file = "fragments/footer.jsp" %>
</html>
