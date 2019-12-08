<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridView.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Arial">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GridConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [id] = @id" InsertCommand="INSERT INTO [customer] ([Name], [Phone], [Dep_id]) VALUES (@Name, @Phone, @Dep_id)" SelectCommand="SELECT * FROM [customer]" UpdateCommand="UPDATE [customer] SET [Name] = @Name, [Phone] = @Phone, [Dep_id] = @Dep_id WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Dep_id" Type="Int32" />
                </InsertParameters>

                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />

                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Dep_id" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" ShowFooter="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>



                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id" Visible="False">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;
                             &nbsp;
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Insert">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ValidationGroup="INSERT" OnClick="LinkButton_Click" ID="Insert" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Name are Required" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </EditItemTemplate>

                        <ItemTemplate>
                            &nbsp;
                             &nbsp;
                             &nbsp;
                             &nbsp;
                             &nbsp;
                             &nbsp;
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" runat="server" ErrorMessage="Insert the Name are Required" ControlToValidate="TextBoxName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </FooterTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="Phone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Phone are Required" ControlToValidate="Phone" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </EditItemTemplate>

                        <ItemTemplate>
                            &nbsp;
                             &nbsp;
                             &nbsp;
                             &nbsp;
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="INSERT" runat="server" ErrorMessage="Insert the Phone Number are Required" ControlToValidate="TextBoxPhone" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>

                        </FooterTemplate>
                    </asp:TemplateField>

                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
