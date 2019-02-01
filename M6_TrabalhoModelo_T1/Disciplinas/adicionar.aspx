<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Disciplinas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="codigo" DataSourceID="SqlDisciplinas" DefaultMode="Insert">
                <EditItemTemplate>
                    codigo:
                    <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    nrmodulos:
                    <asp:TextBox Text='<%# Bind("nrmodulos") %>' runat="server" ID="nrmodulosTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    maximo_faltas:
                    <asp:TextBox Text='<%# Bind("maximo_faltas") %>' runat="server" ID="maximo_faltasTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    nrmodulos:
                    <asp:TextBox Text='<%# Bind("nrmodulos") %>' runat="server" ID="nrmodulosTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    maximo_faltas:
                    <asp:TextBox Text='<%# Bind("maximo_faltas") %>' runat="server" ID="maximo_faltasTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    codigo:
                    <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    nrmodulos:
                    <asp:Label Text='<%# Bind("nrmodulos") %>' runat="server" ID="nrmodulosLabel" /><br />
                    ano_escolaridade:
                    <asp:Label Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    maximo_faltas:
                    <asp:Label Text='<%# Bind("maximo_faltas") %>' runat="server" ID="maximo_faltasLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' InsertCommand="INSERT INTO disciplinas(nome, nrmodulos, ano_escolaridade, maximo_faltas) VALUES (@nome, @nrmodulos, @ano_escolaridade, @maximo_faltas)" SelectCommand="SELECT disciplinas.* FROM disciplinas">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="nrmodulos"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade"></asp:Parameter>
                    <asp:Parameter Name="maximo_faltas"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
