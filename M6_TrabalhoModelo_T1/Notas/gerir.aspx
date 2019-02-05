<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="M6_TrabalhoModelo_T1.Notas.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlNotas" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataFormatString="{0:dd-MM-yyyy}" DataField="data_nota" HeaderText="data_nota" SortExpression="data_nota"></asp:BoundField>
                    <asp:BoundField DataField="valor_nota" HeaderText="valor_nota" SortExpression="valor_nota"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo"></asp:BoundField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="codigo_disciplina" HeaderText="codigo_disciplina" SortExpression="codigo_disciplina"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionStringNotas %>' DeleteCommand="delete from notas where id=@id" SelectCommand="select * from notas" UpdateCommand="UPDATE notas SET data_nota = @data_nota, valor_nota = @valor_nota, nr_modulo = @nr_modulo, nprocesso = @nprocesso, codigo_disciplina = @codigo_disciplina WHERE (id = @id)">
                <DeleteParameters>
                    <asp:Parameter Name="id"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="data_nota" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="valor_nota"></asp:Parameter>
                    <asp:Parameter Name="nr_modulo"></asp:Parameter>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="codigo_disciplina"></asp:Parameter>
                    <asp:Parameter Name="id"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
