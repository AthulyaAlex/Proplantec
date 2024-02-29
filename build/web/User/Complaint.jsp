<%-- 
    Document   : tbl_complaint
    Created on : 28 Oct, 2023, 3:35:10 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint</title>
    </head>
    <body>
        <form method="post">
            <table border="3" align="center">
                <tr>
                    <td>Title</td>
                    <td>
                        <input type="text" name="txttl"placeholder="Enter Title" >
                    </td>
                </tr>
                <tr>
                    <td>Content</td>
                    <td>
                        <textarea name="txtco"  ></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form> 
    </body>
</html>
