
<%-- 
    Document   : pag2
    Created on : Mar 18, 2012, 9:33:00 PM
    Author     : juliano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>

<%!

//Função que recebe a data de nascimento e retorna a idade do usuário
 private String getAge(String birthDateString)  {
     try {
         int age;
         SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
         GregorianCalendar birthDate = new GregorianCalendar();
         birthDate.setTime(sdf.parse(birthDateString));
         GregorianCalendar now = new GregorianCalendar();
         age = now.get(Calendar.YEAR) - birthDate.get(Calendar.YEAR);
         if (now.get(Calendar.DAY_OF_YEAR) <  birthDate.get(Calendar.DAY_OF_YEAR)){
             age--;
         }
         return (new Integer(age)).toString();
     } catch (Exception e) {
      return "Use dd/mm/yyyy";
    }
 }
 %>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    
    <body>
        <!--Coletando os parâmetros da sessão-->
        <% 
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String sexo = request.getParameter("sexo");
        String dataNasc = request.getParameter("dataNasc");
        %>
        
        <!-- Montando a mensagem com os parâmetros recebidos -->
        Bom dia
        
        <!-- testando o sexo e printando a saída de acordo -->
        <%if (sexo.equals("M")){ 
            out.print("Senhor ");  
            }else{
            out.print("Senhora "); 
            }
        %>
        
        <%=nome%>, você tem <%=getAge(dataNasc)%> anos!<br>
        
        Sua senha é: <%=senha%> <br/>
        
        Seu IP é: <%=request.getLocalAddr()%>
              
     
      
        
    </body>
</html>
