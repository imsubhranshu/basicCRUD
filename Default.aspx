<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    

    
       
    
    

    
        <asp:Table ID="Table1" runat="server" Style="margin-top: 1%; align-self: center">
            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server">
                    Name:
                </asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server">
                    Roll Number:
                </asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server">
                    <asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>
                </asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server">
                    Address:
                </asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                <asp:Label runat="server">
                    Department id:
                </asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                <asp:Label runat="server">
                    <asp:TextBox ID="txtDepartment" TextMode="Number" runat="server" />
                </asp:Label>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="BtnAdd" Text="ADD" runat="server" OnClick="BtnAdd_Click" />
                    <asp:Button ID="BtnUpdate" Text="UPDATE" runat="server" OnClick="BtnUpdate_Click" />
                    <asp:Button ID="BtnDelete" Text="DELETE" runat="server" OnClick="BtnDelete_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
   
    
    

    

    
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roll" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="roll" HeaderText="roll" ReadOnly="True" SortExpression="roll" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:basicCRUDConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>


    

    
    

    

    
    

</asp:Content>
