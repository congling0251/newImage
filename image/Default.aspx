<%@ Page Title="主页" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="image._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <asp:Panel ID="Panel1" runat="server" Width="400px" CssClass="float-left">
<%--            <h3>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Value="color">按照颜色查找</asp:ListItem>
            <asp:ListItem Value="size">按照形状查找</asp:ListItem>
            <asp:ListItem Value="grain">按照纹理查找</asp:ListItem>
        </asp:CheckBoxList>
</h3>

    <h3>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上传" />
        
</h3>
            --%>
                <asp:Label ID="Label1" runat="server" Text="文物名："></asp:Label>
                <asp:TextBox ID="name_box" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="类别"></asp:Label>
                <asp:TextBox ID="category_box" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="作者"></asp:Label>
                <asp:TextBox ID="author_box" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="年代"></asp:Label>
                <asp:TextBox ID="period_box" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="存放地点"></asp:Label>
                <asp:TextBox ID="museum_box" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="float-right">
        <asp:ListView ID="ListView1" runat="server">
            <LayoutTemplate>
                <ul>
                     <asp:PlaceHolder runat="server" ID="itemPlaceholder" />
                </ul>
              </LayoutTemplate>
              <ItemTemplate>
                <li>
                    <label>文物名：<%# Eval("Tag") %>"></label>
                    <br />
                    <label>类别:<%# Eval("Category") %>"></label>
                    <br />
                    <label>作者:<%# Eval("Author") %>"></label>
                    <br />
                    <label>年代:<%# Eval("Period") %>"></label>
                    <br />
                    <label>存放地点:<%# Eval("Museum") %>"></label>
                    <br />
                    <label>介绍：<%# Eval("Intro") %>"></label>
                    <img style="width:200px;height:200px" src="<%# Eval("Url")%>"/>
                </li>
              </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </asp:Panel>
</asp:Content>
