<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Disciplinas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="../css/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <!--Menu-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="/index.aspx">SI - Módulo 6</a>
        <!--Botão hamburguer-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--Botão hamburguer-->
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <!--Alunos-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alunos</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="../Alunos/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Alunos/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Alunos/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Alunos-->
                <!--Disciplinas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Disciplinas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown02">
                        <a class="dropdown-item" href="../Disciplinas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Disciplinas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Disciplinas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Disciplinas-->
                <!--Notas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown03">
                        <a class="dropdown-item" href="../Notas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="../Notas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="../Notas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Notas-->
                <!--Estatísticas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Estatísticas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="../Consultas/media_aluno.aspx">Média por aluno</a>
                        <a class="dropdown-item" href="../Consultas/melhor_aluno.aspx">Melhor aluno</a>
                        <a class="dropdown-item" href="../Consultas/nr_notas_disciplina.aspx">Nr de Notas Por Disciplina</a>
                    </div>
                </li>
                <!--Estatísticas-->
            </ul>
        </div>
    </nav>
    <!--Menu-->
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
        <!--JS-->
    <script src="../js/jquery-3.3.1.slim.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.js"></script>

</body>
</html>
