<%-- 
    Document   : AgentUploadAction
    Created on : 11 Jan, 2024, 3:22:07 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%

            File savedFile = null;
            FileItem f_item = null;

            String field_name = "";
            String file_name = "";
            String ph = "";
            String pf = "";

            String field[] = new String[20];
            String value[] = new String[20];
//enctype="multipart/form-data"
//checking if request cotains multipart data
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);

            if (isMultipart) {
                System.out.println("ifff");

                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);

                //declaring a list of form fields
                List items_list = null;

                //assigning fields to list 'items_list'
                try {
                    items_list = upload.parseRequest(request);
                } catch (FileUploadException ex) {
                    out.println(ex);
                }

                //declaring iterator
                Iterator itr = items_list.iterator();
                int k = 0;
                //iterating through the list 'items_list'
                while (itr.hasNext()) {

                    //typecasting next element in items_list as fileitem
                    f_item = (FileItem) itr.next();

                    //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
                    if (f_item.isFormField()) {

                        //getting fieldname and value
                        field[k] = f_item.getFieldName();
                        value[k] = f_item.getString();

                        k++;
                    } else {

           //f_item=(FileItem)itr.next();
                        file_name = f_item.getName();
                        field_name = f_item.getFieldName();
                        if (field_name.equals("txtprf")) {
                            String ext = file_name.substring(file_name.lastIndexOf("."));
                            //setting path to store image
                            File proj_path = new File(config.getServletContext().getRealPath("/"));
                            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\ASSETS\\Files\\Agentproof\\";
                            Random r = new Random();
                            int r_num = r.nextInt(1111) + 999;

                            ph = "Agentproof_" + r_num + ext;
                            //creating a file object
                            savedFile = new File(file_path + ph);
                            try {
                                //writing the file object
                                f_item.write(savedFile);

                            } catch (Exception ex) {
                                out.println(ex);
                            }
                        }
                        if (field_name.equals("txtphoto")) {
                            String ext = file_name.substring(file_name.lastIndexOf("."));
                            //setting path to store image
                            File proj_path = new File(config.getServletContext().getRealPath("/"));
                            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\Assets\\Files\\Agentphoto\\";
                            Random r = new Random();
                            int r_num = r.nextInt(1111) + 999;

                            pf = "Agentphoto_" + r_num + ext;
                            //creating a file object
                            savedFile = new File(file_path + pf);
                            try {
                                //writing the file object
                                f_item.write(savedFile);

                            } catch (Exception ex) {
                                out.println(ex);
                            }
                        }

                    }

                }
                if (value[5].equals(value[6])) {
                    String str1 = "insert into tbl_agent(agent_name,agent_contact,agent_email,agent_proof,agent_photo,agent_address,location_id,agent_password)"
                            + "values('" + value[0] + "','" + value[1] + "','" + value[2] + "','" + ph + "','" + pf + "','" + value[3] + "','" + value[4] + "','" + value[5] + "')";
                        

                   

                
                System.out.println(str1);       

                boolean status = con.executeCommand(str1);

                if (status == true) {
        %>
        <script type="text/javascript" >
            alert("Upload Successfully..");
            setTimeout(function() {
                window.location.href = '../../Guest/AgentRegistration.jsp'
            }, 100);
        </script>
        <%
                }
                } 
            else
                {
                  %>
                  <script type="text/javascript" >
                  alert("Password missmatch..");
                  setTimeout(function() {
                  window.location.href = '../../Guest/AgentRegistration.jsp'
                  }, 100);
                  </script>  
                  <%
                }
           
            }
                
        %>
    </body>
</html>