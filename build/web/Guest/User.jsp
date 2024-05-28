<%-- 
    Document   : tbl_user
    Created on : 28 Oct, 2023, 2:55:48 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserRegistration</title>
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') fixed center center/cover;
                min-height: 800px;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:white;
            }
           
        </style>
    </head>                                                                 
    <body>
            <div class="bg-img">
                <div style="background-color: #26404387;">
            <form method="POST" enctype="multipart/form-data" action="../Assets/Actionpages/UserUploadAction.jsp">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="txtname" class="text-box" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input  required type="text" name="txtcontact" class="text-box" placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}">
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <input  required type="date" name="txtdob" placeholder="Enter DOB" class="text-box">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input  required type="email" name="txtemail" placeholder="Enter Email-Id" class="text-box">
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
                        <input  required type="file" name="txtphoto" class="text-box">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea required name="txtadd" class="text-box"  placeholder="Enter Address" rows="3" cols="10"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input  required type="password"class="text-box" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input  required type="password" class="text-box" name="txtpsswd1" placeholder="Re-Enter Password">
                    </td>
                </tr>  
                <tr>
                    <td>Location</td>
                    <td>
                        <select required=""  name="selloc" onchange="getPlace(this.value)" class="text-box">
                            <option>--select location--</option>
                            <%
                                String selqry = "select * from tbl_location";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("location_id")%>"style="color: black"><%=rs.getString("location_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Localplace</td>
                    <td>
                        <select required name="ddlloca"class="text-box" id="selplace" required>
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
            </div>
                        <br><br>
        </form>
        </div>
        </div>
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

 <%@include file="Foot.jsp"%>
