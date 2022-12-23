<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" Title="Untitled Page" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc1" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc1:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">

    
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2">
             <h4 style="text-align:left; margin-top:10px; margin-bottom:0; color:Maroon">Gửi thư yêu cầu</h4></td>
            
        </tr>
        <tr>
            <td>
                Chủ đề</td>
            <td>
                <asp:TextBox ID="txtchude" Width="270px" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td>
               Họ và tên:</td>
            <td>
                <asp:TextBox ID="txthoten" Width="270px" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td>
                <asp:TextBox ID="txtemail" Width="270px" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
            
               Nội dung:<br />
            
             <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <cc1:Editor ID="Editor1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
               <asp:Button ID="bntgui" runat="server" Text="GỬI" onclick="bntgui_Click" /> </td>
            <td>
            <asp:Button ID="bntback" runat="server" Text="BACK" onclick="bntback_Click"/>
            <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        
    </table>

    
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

