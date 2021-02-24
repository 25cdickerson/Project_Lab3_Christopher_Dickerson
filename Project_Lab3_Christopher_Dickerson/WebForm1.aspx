<!-- The Main Web Form
     Christopher Dickerson
    -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project1_Lab1_Christopher_Dickerson.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Coding Club Registration Form</h1>
        <div>
            <asp:Label ID="LName" runat="server" Text="Your Name: " CssClass="Label" />
            <asp:TextBox ID="TName" runat="server" Text="" CssClass="Text" />
            <asp:RequiredFieldValidator ID="validName" runat="server" 
                ErrorMessage="Enter Name" Forecolor="Red" 
                ControlToValidate="TName" Type="String" Font-Bold="true" ><span>*<span></span></span></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LEmail" runat="server" Text="Your Email: " CssClass="Label" />
            <asp:TextBox ID="TEmail" runat="server" Text="" CssClass="Text" />
            <asp:RequiredFieldValidator ID="validEmailRF" runat="server" 
                ErrorMessage="Enter Email" Forecolor="Red" 
                ControlToValidate="TEmail" Type="String" Font-Bold="true" Display="Dynamic" ><span>*</span></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="validEmailRE" runat="server"
                ErrorMessage="Incorrect Email" Forecolor="Red" Font-Bold="true" 
                ControlToValidate="TEmail" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                <span>*</span></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="LPhone" runat="server" Text="Your Phone: " CssClass="Label" />
            <asp:TextBox ID="TPhone" runat="server" Text="" CssClass="Text" />
            <asp:RequiredFieldValidator ID="validPhone" runat="server" 
                ErrorMessage="Enter Phone Number" Forecolor="Red" 
                ControlToValidate="TPhone" Type="String" Font-Bold="true" Display="Dynamic" ><span>*</span></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="validPhoneRE" runat="server"
                ErrorMessage="Incorrect Phone" Forecolor="Red" Font-Bold="true" 
                ControlToValidate="TPhone" 
                ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"><span>*</span></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="BSubmit" runat="server" Text="Submit" CssClass="Button" />
            <asp:Button ID="BClear" runat="server" Text="Clear" CssClass="Button" />
            <br />
            <asp:Label ID="LInfo" runat="server" Visible="false" CssClass="Label" />
        </div>
    </form>
</body>
</html>
