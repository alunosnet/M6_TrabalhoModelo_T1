<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Notas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:ListView ID="ListView1" runat="server"></asp:ListView>
        </div>
    </form>
</body>
</html>
