<%-- 
    Document   : tbl_user
    Created on : 28 Oct, 2023, 2:55:48 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserRegistration</title>
    </head>                                                                 
    <body>
        <form method="POST" enctype="multipart/form-data" action="../Assets/Actionpages/UserUploadAction.jsp">
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
                        <input  required type="text" name="txtcontact" placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}">
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <input  required type="date" name="txtdob" placeholder="Enter DOB">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input  required type="email" name="txtemail" placeholder="Enter Email-Id">
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        Male<input required type="radio" name="txtgender">
                        Female<input type="radio" name="txtgender">
                        Others<input type="radio" name="txtgender">
                    </td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td align="center">
                        <input  required type="file" name="txtphoto">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea required name="txtadd"  placeholder="Enter Address" rows="3" cols="10"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input  required type="password" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input  required type="password" name="txtpsswd1" placeholder="Re-Enter Password">
                    </td>
                </tr>  
                <tr>
                    <td>Location</td>
                    <td>
                        <select required=""  name="selloc" onchange="getPlace(this.value)">
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
                    </td>
                </tr>
                <tr>
                    <td>Localplace</td>
                    <td>
                        <select required name="ddlloca" id="selplace" required>
                            <option>--select localplace--</option>
                        </select>
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

