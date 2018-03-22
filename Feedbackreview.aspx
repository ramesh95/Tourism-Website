<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Feedbackreview.aspx.vb" Inherits="Feedbackreview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="menu.css" rel="stylesheet" type="text/css" />
    <script runat="server">

</script>

</head>
<body background="image/wood_texture.jpg" style="background-attachment:fixed">
    <form id="form1" runat="server">
    <div>
     <table width="100%" height="100%" border="0" align="center" style="background:url('image/ab.png'); width: 979px;">
  <tr>
    <td rowspan="6" width="0">&nbsp;</td>
    <td class="style2"><img src="image/logo.png" width="246" height="181" alt="logo" /></td>
    <td width="79%" class="style2"><img src="image/image.gif" width="800" height="232" alt="animated_image" /></td>
    <td rowspan="6" width="0">&nbsp;</td>
  </tr>
     <tr >
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.facebook.com" target="_blank"><input type="image" name="fb_icon" id="fb_icon" src="image/facebook.png" /></a>&nbsp;&nbsp; &nbsp;
                        <a href="http://www.plus.google.com" target="_blank"> <input type="image" name="google" id="google" src="image/G+-button-32x32.png" /></a>&nbsp;&nbsp; &nbsp;
                           <a href="http://www.twitter.com" target="_blank">   <input type="image" name="twitter" id="twitter" src="image/twitter.png" /></a></td>
  </tr>
  <tr>
    <td height="57" colspan="2"><div class="shadowblockmenu">
<ul style="alignment-adjust:central">
<li><a href="home.html">Home</a></li>
<li><a href="about us.html">About Us</a></li>
<li><a href="Explore.html">Explore Odisha!</a></li>
<li><a href="gallery.html">Gallery</a></li>
<li><a href="accomadations.html">Accomodations</a></li>
<li><a href="Tour packages.html">Tour Packages</a></li>
<li><a href="Eco tourism.html">Eco-Tourism</a></li>
<li><a href="Feedback.aspx">Feedback</a></li>
</ul>
</div>
</td>
  </tr>
  
 <tr style="font:'Times New Roman', Times, serif; font-size:18px">
 
<td><img src="image/feedback.gif" /></td>
 <td height="57" style="font-size:17px; margin-right:50px; margin-left: 50px" 
          valign="top" class="style1">
    
   <center><h1 style="background-color: #C0C0C0">Previous Feedback</h1>
                                        <p style="text-align:center" >
                                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <Columns>
        <asp:BoundField DataField="tourist_id" HeaderText="tourist_id" 
            InsertVisible="False" ReadOnly="True" SortExpression="tourist_id" />
        <asp:BoundField DataField="tourist_name" HeaderText="tourist_name" 
            SortExpression="tourist_name" />
        <asp:BoundField DataField="tourist_email" HeaderText="tourist_email" 
            SortExpression="tourist_email" />
        <asp:BoundField DataField="tourist_sugg" HeaderText="tourist_sugg" 
            SortExpression="tourist_sugg" />
    </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
</asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\fb.mdf;Integrated Security=True;User Instance=True" 
    SelectCommand="SELECT * FROM [Feedback]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                                        </p>
                                        </center>


      </td>
  </tr>
  <tr >
    <td colspan="2" ><h2 align="center" style="border-bottom:double; border-top:double">
    <input type="image" name="contact" id="contact" src="image/contact_icon[1].png" onclick="parent.location='Contact us.html'" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="image" name="map" id="map" src="image/map.png" onclick="parent.location='Map.html'" />
   <br />
    <label for="contact" style="font-size:16px" >Contact Us &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <label for="map" style="font-size:16px" >Map Of Odisha</label>
    </h2>
     </td>
  </tr>
  <tr >
    <td colspan="2" height="10%"><h1 align="center" >
      <label for="copyright" style="font-size:medium" >© 2014 All rights reserved. | Designed by :- Ramesh Kumar (pt1382252)</label>
    </h1></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
