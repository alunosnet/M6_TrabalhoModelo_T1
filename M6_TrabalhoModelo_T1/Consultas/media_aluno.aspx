﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="media_aluno.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Consultas.media_aluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/css.css" rel="stylesheet" />
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
        <div class="container-fluid">
            <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlMedia">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="M&#233;dia" HeaderText="M&#233;dia" ReadOnly="True" SortExpression="M&#233;dia"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlMedia" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT alunos.nome, AVG(notas.valor_nota) AS Média FROM alunos INNER JOIN notas ON alunos.nprocesso = notas.nprocesso GROUP BY notas.nprocesso, alunos.nome"></asp:SqlDataSource>
        </div>
    </form>
        <!--JS-->
    <script src="/js/jquery-3.3.1.slim.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.js"></script>
</body>
</html>
