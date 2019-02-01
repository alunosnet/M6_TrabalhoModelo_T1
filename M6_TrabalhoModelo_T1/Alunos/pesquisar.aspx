<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Alunos.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlAlunos" DataKeyNames="nprocesso" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="">nprocesso:
                        <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        data_nascimento:
                        <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                        genero:
                        <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /><br />
                        morada:
                        <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /><br />
                        codigo_postal:
                        <asp:Label Text='<%# Eval("codigo_postal") %>' runat="server" ID="codigo_postalLabel" /><br />
                        localidade:
                        <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">nprocesso:
                        <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
                        nome:
                        <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                        data_nascimento:
                        <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                        genero:
                        <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                        morada:
                        <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                        codigo_postal:
                        <asp:TextBox Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                        localidade:
                        <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                        email:
                        <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
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
                        data_nascimento:
                        <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                        genero:
                        <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                        morada:
                        <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                        codigo_postal:
                        <asp:TextBox Text='<%# Bind("codigo_postal") %>' runat="server" ID="codigo_postalTextBox" /><br />
                        localidade:
                        <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                        email:
                        <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">nprocesso:
                        <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        data_nascimento:
                        <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                        genero:
                        <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /><br />
                        morada:
                        <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /><br />
                        codigo_postal:
                        <asp:Label Text='<%# Eval("codigo_postal") %>' runat="server" ID="codigo_postalLabel" /><br />
                        localidade:
                        <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
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
                    <td runat="server" style="">nprocesso:
                        <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        data_nascimento:
                        <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                        genero:
                        <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /><br />
                        morada:
                        <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /><br />
                        codigo_postal:
                        <asp:Label Text='<%# Eval("codigo_postal") %>' runat="server" ID="codigo_postalLabel" /><br />
                        localidade:
                        <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                        email:
                        <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT * FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
