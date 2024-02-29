<%--     Document   : tbl_nursery
    Created on : 28 Oct, 2023, 3:05:40 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NurseryRegistration</title>
    </head>
        <body>
            <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/NurseryUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="txtname" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="txtcontact" placeholder="Enter Contact No"  pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaining 9 digit with 0-9">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email" name="txtemail" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                <tr>
                    <td>Logo</td>
                    <td align="center">
                        <input required type="file" name="txtlogo">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea required name="txtadd" placeholder="Enter Address" ></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select required=""  name="selloc">
                            <option>--select location--</option>
                            <%
                                String selqry = "select * from tbl_location";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("location_id")%>"><%=rs.getString("location_name")%></option>
                            <%
                                }
                            %>
                        </select>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td align="center">
                        <input required type="file" name="txtpro">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input required type="password" name="txtcpsswd" placeholder="ReEnter Password">
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
    <script src="../Assets/jQuery/jQuery.js"></script>         
    <script>
                            function getPlace(did)
                            {

                                //  alert(did);  
                                $.ajax({url: "../Assets/AjaxPages/Ajaxplaces.jsp?pid=" + did,
                                    success: function(result) {
                                        $("#selplace").html(result);
                                    }
                                })
                            }

    </script>
</html>
