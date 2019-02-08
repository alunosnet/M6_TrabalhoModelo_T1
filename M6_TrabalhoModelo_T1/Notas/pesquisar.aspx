<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Notas.pesquisar" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT [nprocesso], [nome], [email] FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlNotas" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="">data_nota:
                        <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                        valor_nota:
                        <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /><br />
                        nr_modulo:
                        <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                        codigo_disciplina:
                        <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">data_nota:
                        <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                        valor_nota:
                        <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /><br />
                        nr_modulo:
                        <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                        codigo_disciplina:
                        <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /><br />
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
                    <td runat="server" style="">data_nota:
                        <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                        valor_nota:
                        <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /><br />
                        nr_modulo:
                        <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                        codigo_disciplina:
                        <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /><br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">data_nota:
                        <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                        valor_nota:
                        <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /><br />
                        nr_modulo:
                        <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                        codigo_disciplina:
                        <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
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
                    <td runat="server" style="">data_nota:
                        <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                        valor_nota:
                        <asp:Label Text='<%# Eval("valor_nota") %>' runat="server" ID="valor_notaLabel" /><br />
                        nr_modulo:
                        <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                        codigo_disciplina:
                        <asp:Label Text='<%# Eval("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT [data_nota], [valor_nota], [nr_modulo], [codigo_disciplina] FROM [notas] WHERE ([nprocesso] = @nprocesso)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="nprocesso" Type="Int32"></asp:ControlParameter>
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
