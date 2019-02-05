<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Disciplinas.pesquisar" %>

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
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDisciplinas" DataKeyNames="codigo" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nrmodulos:
                        <asp:Label Text='<%# Eval("nrmodulos") %>' runat="server" ID="nrmodulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                        maximo_faltas:
                        <asp:Label Text='<%# Eval("maximo_faltas") %>' runat="server" ID="maximo_faltasLabel" /><br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel1" /><br />
                        nome:
                        <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                        nrmodulos:
                        <asp:TextBox Text='<%# Bind("nrmodulos") %>' runat="server" ID="nrmodulosTextBox" /><br />
                        ano_escolaridade:
                        <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                        maximo_faltas:
                        <asp:TextBox Text='<%# Bind("maximo_faltas") %>' runat="server" ID="maximo_faltasTextBox" /><br />
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /><br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr runat="server" id="itemPlaceholderContainer">
                        <td runat="server" id="itemPlaceholder"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">nome:
                        <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                        nrmodulos:
                        <asp:TextBox Text='<%# Bind("nrmodulos") %>' runat="server" ID="nrmodulosTextBox" /><br />
                        ano_escolaridade:
                        <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                        maximo_faltas:
                        <asp:TextBox Text='<%# Bind("maximo_faltas") %>' runat="server" ID="maximo_faltasTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nrmodulos:
                        <asp:Label Text='<%# Eval("nrmodulos") %>' runat="server" ID="nrmodulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                        maximo_faltas:
                        <asp:Label Text='<%# Eval("maximo_faltas") %>' runat="server" ID="maximo_faltasLabel" /><br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                                    <tr runat="server" id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nrmodulos:
                        <asp:Label Text='<%# Eval("nrmodulos") %>' runat="server" ID="nrmodulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                        maximo_faltas:
                        <asp:Label Text='<%# Eval("maximo_faltas") %>' runat="server" ID="maximo_faltasLabel" /><br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT * FROM [disciplinas] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
