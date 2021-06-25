<%@page contentType="text/html" pageEncoding="UTF-8" import="org.hibernate.SessionFactory, org.hibernate.cfg.Configuration, org.hibernate.Session, org.hibernate.Transaction, java.util.List, java.util.Iterator, myApp.Item, org.hibernate.Criteria, org.hibernate.criterion.Example" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
    SessionFactory sessionFactory;
    org.hibernate.Session hibSession;
    List<Item> items;
%>

<%
    sessionFactory = new Configuration().configure().buildSessionFactory();
    hibSession = sessionFactory.openSession();
    Transaction tx = null;

    String submit = request.getParameter("btnSubmit");
    if(submit != null && ("Search").equals(submit)) {
        try {
            hibSession.beginTransaction();
            Criteria criteria = hibSession.createCriteria(Item.class);
            Item it = new Item();
            it.setItemName("%"+request.getParameter("itemName")+"%");
            it.setSerial("%"+request.getParameter("serial")+"%");
            
            Example example = Example.create(it)
                .excludeZeroes()           		//exclude zero valued properties
                .ignoreCase()              		//perform case insensitive string comparisons
                .enableLike();             		//use like for string comparisons
            criteria.add(example);
            items = criteria.list();
        }
        catch (RuntimeException e) {
            throw e;
        }
    }
   hibSession.close();
%>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
        <title>Guest Book</title>
</head>
<body bgcolor="lightblue">
<form method="post">
    <table border="0" cellpadding="0" cellspacing="2">
        <tr>
            <td align="right">
                <font style="font-size:15px; font-family:Arial,Times,serif; font-weight:bold;">Item Name:</font>
            </td>
            <td>
                <input name="itemName" maxlength="25" size="50" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <font style="font-size:15px; font-family:Arial,Times,serif; font-weight:bold;">Serial:</font>
            </td>
            <td>
                <input name="serial" maxlength="25" size="50" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <input type="submit" name="btnSubmit" value="Search" />
            </td>
        </tr>
    </table>
</form>
  
   
<table border="0" cellpadding="0" cellspacing="0" align="center" width="100%">
    <%
        if(items != null){
            Iterator iterator = items.iterator();
            while (iterator.hasNext()) {
                Item objItem = (Item) iterator.next();
    %>
    <tr>
        <td style="font:12px/16px Georgia; color:#786e4e;">
            <b><%=objItem.getItemId()%>:</b>
            <%=objItem.getSerial()%><br>
            <%=objItem.getItemName()%><br>
            <%=objItem.getUrl() %><br>
            
            <br /><br />
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>