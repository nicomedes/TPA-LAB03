<%-- 
    Document   : index
    Created on : Mar 18, 2012, 7:26:32 PM
    Author     : juliano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário</title>
    </head>
    <body>
        <form action="pag2.jsp"  method="POST">
        Nome:<input type="text" name="nome"/><br/>
        Senha:<input type="password" name="senha"/><br/>
        Sexo:	
        M:<INPUT type=radio name="sexo" value="M">
	F:<INPUT type=radio name="sexo" value="F"><br/>
        Data de nascimento: <input type="date" name="dataNasc"></br>
        <input type="submit" value="Enviar" > <input type="reset" value="Apagar">
        
        </form>
    </body>
</html>
