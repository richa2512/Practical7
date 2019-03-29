<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 19px">
    <form id="form1" runat="server">
    <p>
        Name:<asp:TextBox ID="txtName" runat="server" ForeColor="Red" 
            ToolTip="Enter Your Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Enter Your Name" 
            ForeColor="Red" ToolTip="Enter Your Name">*</asp:RequiredFieldValidator>
    </p>
    <p>
        Email:<asp:TextBox ID="txtEmail" runat="server" ForeColor="Red" 
            ToolTip="Enter Your Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Valid Email" 
            ForeColor="Red" ToolTip="Enter Your Email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    </p>
    <p>
        Password:<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Confirm Password:<asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPass" ControlToValidate="txtConfirm" 
            ErrorMessage="Enter Same Password" ForeColor="Red" 
            ToolTip="Enter Same Password">*</asp:CompareValidator>
    </p>
    <p>
        Semester:<asp:TextBox ID="txtSem" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtSem" ErrorMessage="Enter Semester between 1 to 8" 
            ForeColor="Red" MaximumValue="8" MinimumValue="1" 
            ToolTip="Enter Valid Semester" Type="Integer">*</asp:RangeValidator>
    </p>
    <p>
        PhoneNo:<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="txtPhone" ErrorMessage="Enter Valid PhoneNo" ForeColor="Red" 
            ToolTip=" Enter Valid Phone Number" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
    </p>
    <asp:Button ID="btnSave" runat="server" Text="Save" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
