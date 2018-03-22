<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="_Default" %>
<%@ Import Namespace ="System.Data.SqlClient" %>
<%@ Import Namespace ="System.Data" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>feedback</title>
     <link href="menu.css" rel="stylesheet" type="text/css" />
     
<script runat="server">
    Dim n As Integer
    
    Dim Sqlcon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\fb.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Try
            Sqlcon.Open()
        Catch ex As Exception
            MsgBox("Unable to open Database, the application want to connect to SQL server 2005")
        End Try
           
       
        Dim s As String
        Dim sqlad As New SqlDataAdapter
        Dim sqlds As New DataSet
        sqlad.SelectCommand = New SqlCommand("select tourist_id from Feedback", Sqlcon)
        s = CInt(sqlad.Fill(sqlds))
        sqlad.SelectCommand = New SqlCommand("Select * from Feedback", Sqlcon)
        sqlad.Fill(sqlds)

        Dim sqldr As DataRow
        sqldr = sqlds.Tables(0).NewRow

        sqldr("tourist_name") = TextBox1.Text
        sqldr("tourist_email") = TextBox2.Text
        sqldr("tourist_sugg") = TextBox3.Text

        sqlds.Tables(0).Rows.Add(sqldr)
        n = s + 1
        sqlad.InsertCommand = New SqlCommand("Insert into Feedback (tourist_id, tourist_name, tourist_email, tourist_sugg) values ('" & n & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')", Sqlcon)
    
        sqlad.Update(sqlds)

        Sqlcon.Close()

        MsgBox("Thank you for your valuable feedback", "Ama Odisha")
        Response.Redirect("Feedback.aspx")

    End Sub
</script>
    <style type="text/css">
        .style1
        {
            width: 25%;
        }
    </style>
</head>
<body background="image/wood_texture.jpg" style="background-attachment:fixed">
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="100%" border="0" align="center" style="background:url('image/ab.png'); width: 979px;">
  <tr>
    <td rowspan="7" width="0">&nbsp;</td>
    <td height="180" class="style1"><img src="image/logo.png" width="246" height="181" alt="logo" /></td>
    <td rowspan="2" width="79%"><img src="image/image.gif" width="800" height="232" alt="animated_image" /></td>
    <td rowspan="7" width="0">&nbsp;</td>
  </tr>
   <tr >
    <td height="54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.facebook.com" target="_blank"><input type="image" name="fb_icon" id="fb_icon" src="image/facebook.png" /></a>&nbsp;&nbsp; &nbsp;
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
 
<td><img src="image/feedback.gif" /><br /><br />
<p style="text-align:center"><a href=Feedbackreview.aspx > View previous Feedback </a></p></td>
      <td height="57" style="font-size:17px; margin-right:50px; margin-left: 50px" 
          valign="top" class="style1">
    
   <center><h1 style="background-color: #C0C0C0">Feedback And Suggestions</h1>
                                        <p >
                                           
                                            <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox1" runat="server" Width="230px" Height="25px" 
                                                style="margin-left: 0px"></asp:TextBox>
                                           
                                        </p>
                                        <p >
                                           
                                            <asp:Label ID="Label2" runat="server" Text="Email:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox2" runat="server" Width="227px" Height="24px"></asp:TextBox>
                                           
                                        </p>
                                        <p >
                                           
                                            <asp:Label ID="Label3" runat="server" Text="Suggestion:" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="TextBox3" runat="server" Width="227px" Height="72px" 
                                                TextMode="MultiLine"></asp:TextBox>
                                           
                                        </p>
                                        <p >
                                           
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                                                Height="28px" Width="87px" />
                                           
                                        </p>
</center>


      </td>
  </tr>
  <tr >
    <td colspan="2" ><h2 align="center" style="border-bottom:double; border-top:double">
    <input type="image" name="contact" id="contact" src="image/contact_icon[1].png" onclick="parent.location='Contact us.html'"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
