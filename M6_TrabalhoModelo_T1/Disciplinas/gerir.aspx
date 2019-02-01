<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Disciplinas.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Isto é um comentário-->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDisciplinas" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" InsertVisible="False" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="nrmodulos" HeaderText="nrmodulos" SortExpression="nrmodulos"></asp:BoundField>
                    <asp:BoundField DataField="ano_escolaridade" HeaderText="ano_escolaridade" SortExpression="ano_escolaridade"></asp:BoundField>
                    <asp:BoundField DataField="maximo_faltas" HeaderText="maximo_faltas" SortExpression="maximo_faltas"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' DeleteCommand="DELETE FROM disciplinas WHERE (codigo = @codigo)" SelectCommand="SELECT disciplinas.* FROM disciplinas" UpdateCommand="UPDATE disciplinas SET nome = @nome, nrmodulos = @nrmodulos, ano_escolaridade = @ano_escolaridade, maximo_faltas = @maximo_faltas WHERE (codigo = @codigo)">
                <DeleteParameters>
                    <asp:Parameter Name="codigo"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="nrmodulos"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade"></asp:Parameter>
                    <asp:Parameter Name="maximo_faltas"></asp:Parameter>
                    <asp:Parameter Name="codigo"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
