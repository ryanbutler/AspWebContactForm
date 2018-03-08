<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AspWebContactForm.contact" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<asp:PlaceHolder ID="formPH" runat="server" Visible="true">
<form id="form1" runat="server">
<h3>My Contact Form</h3> 
<table id="contact" cellspacing="0"> 
<tr> 
<td>First Name:</td> 
<td><asp:TextBox ID="FNameTB" runat="server" />
<asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="FNameTB" ErrorMessage="First Name is required" Display="Dynamic" />
</td> 
</tr> 
<tr> 
<td>Last Name:</td> 
<td><asp:TextBox ID="LNameTB" runat="server" />
<asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="LNameTB" ErrorMessage="Last Name is required" Display="Dynamic" />
</td>
</tr> 
<tr> 
<td>Email:</td> 
<td><asp:TextBox ID="EmailTB" runat="server" />
<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="EmailTB" ErrorMessage="Email is required" Display="Dynamic" />
</td> 
</tr> 
<tr> 
<td>Comments:</td> 
<td><asp:TextBox ID="CommentsTB" runat="server" TextMode="MultiLine" />
<asp:RequiredFieldValidator ID="rfvComments" runat="server" ControlToValidate="CommentsTB" ErrorMessage="Comments are required" Display="Dynamic" />
</td> 
</tr> 
<tr>
<td colspan="2"><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="SendMail"/>
<asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="Reset"/></td>
</tr>
</table> 
</form>
</asp:PlaceHolder>
<asp:PlaceHolder ID="sucessPH" runat="server" Visible="false">
<p>Thank you for your submission.</p>
</asp:PlaceHolder>

</body>
</html>
