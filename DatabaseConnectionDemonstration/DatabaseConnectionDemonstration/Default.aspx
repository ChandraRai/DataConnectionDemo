<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseConnectionDemonstration.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="MemberGridView" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="MemberID" HeaderText="Member ID" Visible="true" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" Visible="true" />
                    <asp:BoundField DataField="MembershipDate" HeaderText="Membership Date" Visible="true" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
