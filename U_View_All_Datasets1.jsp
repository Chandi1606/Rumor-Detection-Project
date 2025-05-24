<style type="text/css">
<!--
.style1 {color: #FFFF00}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
-->
</style>
			<table width="924" height="110" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>			  

 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>RID</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Posted_Date</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Rating</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Prediction</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Score</strong></span></th>	
 <th height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Description</strong></span></th>
 <th width="296" height="35" bgcolor="#FF0000"><span class="style1 style5 style6 style10"><strong>Hash Code</strong></span></th>

        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12;
int i=0,rank=0;
try 
{
	String query="select * from dsdetails"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		

	
			%>
            <tr>
			 
              <td  width="73" height="31" align="center" valign="middle" ><span class="style7">
                <%out.println(s1);%>
              </span></td>
              <td  width="119" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s2);%>
              </span></td>
              <td  width="99" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s3);%>
              
              </span></td>
              <td  width="126" height="31" align="center" valign="middle"><span class="style7">
               <%out.println(s4);%>
              
              </span></td>
              <td  width="91" height="31" align="center" valign="middle"><span class="style7">
                <%out.println(s5);%>
              </span></td>
              <td  width="235" height="31" align="center" valign="middle"><span class="style7">
                <textarea cols="28" rows="4"> <%out.println(s6);%></textarea>
              </span></td>
			   <td  width="296" height="31" align="center" valign="middle"><span class="style7">
               <textarea cols="28" rows="4"> <%out.println(s7);%></textarea>
              </span></td>
			  
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
				</p>
          
        