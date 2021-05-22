<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="WebApplication2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 80%; margin: auto; margin-top: 1%;">
        <asp:Table ID="Table2" runat="server" >

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">
                        Department Id:
                    </asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtId" TextMode="Number" runat="server" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                   <asp:Label runat="server">
                       Department Name:
                   </asp:Label>
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtName" runat="server" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">
                        Floor Number:
                    </asp:Label>
                </asp:TableCell><asp:TableCell>
                    <asp:TextBox ID="txtFloor" TextMode="Number" runat="server" />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <asp:Button ID="BtnAdd" Text="ADD" runat="server" OnClick="BtnAdd_Click" />
                    <asp:Button ID="BtnUpdate" Text="UPDATE" runat="server" OnClick="BtnUpdate_Click" />
                    <asp:Button ID="BtnDelete" Text="DELETE" runat="server" OnClick="BtnDelete_Click" />
                </asp:TableCell></asp:TableRow></asp:Table><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" style="margin-top: 1%; width: 30%;">
            <Columns><asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                    <asp:BoundField DataField="floor" HeaderText="floor" SortExpression="floor" />
            </Columns>

        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:basicCRUDConnectionString %>" SelectCommand="SELECT * FROM [dept]">

        </asp:SqlDataSource><br />

    </div>
</asp:Content>
