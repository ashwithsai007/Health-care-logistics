

<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("manager") ) && (password.equals("manager"))) {

                                response.sendRedirect("managerhome.jsp?m1=success");

                            } else {
                                response.sendRedirect("managerlogin.jsp?m2=failed");

                    %>

                 
                    <br>

                        Please Try Again

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
