<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Notas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlNotas" DefaultMode="Insert">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor_nota:
                    <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nprocesso:
                    <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
                    codigo_disciplina:
                    <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor_nota:
                    <asp:TextBox Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nprocesso:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso" SelectedValue='<%# Bind("nprocesso") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT [nprocesso], [nome] FROM [alunos]"></asp:SqlDataSource>
                    <br />codigo_disciplina:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDisciplinas" DataTextField="nome" DataValueField="codigo" SelectedValue='<%# Bind("codigo_disciplina") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' SelectCommand="SELECT [codigo], [nome] FROM [disciplinas]"></asp:SqlDataSource>
                    <br /><asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    data_nota:
                    <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                    valor_nota:
                    <asp:Label Text='<%# Bind("valor_nota") %>' runat="server" ID="valor_notaLabel" /><br />
                    nr_modulo:
                    <asp:Label Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                    nprocesso:
                    <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    codigo_disciplina:
                    <asp:Label Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' InsertCommand="INSERT INTO notas(data_nota, valor_nota, nr_modulo, nprocesso, codigo_disciplina) VALUES (@data_nota, @valor_nota, @nr_modulo, @nprocesso, @codigo_disciplina)" SelectCommand="select * from notas">
                <InsertParameters>
                    <asp:Parameter Name="data_nota" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="valor_nota"></asp:Parameter>
                    <asp:Parameter Name="nr_modulo"></asp:Parameter>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="codigo_disciplina"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
