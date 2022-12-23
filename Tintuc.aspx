<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Tintuc.aspx.cs" Inherits="Tintuc" Title="Untitled Page" %>

<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc1" %>
<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptIncludePlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <uc2:DefaultMenu ID="DefaultMenu1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">
<asp:Repeater ID="rptTintuc" runat="server">
         <ItemTemplate> 
   <table>
            <tr>
                <td colspan="2" height="22" align="left">
                <a class="home-a1" href="Chitietdv.aspx?MaDichVu=<%# DataBinder.Eval(Container.DataItem, "MaTT")%>"> 
                        <%# DataBinder.Eval(Container.DataItem, "Tieude")%></a> </td>
            </tr>
            <tr>
                <td colspan="3" width="20px"></td>
            </tr>
            <tr>
            <td valign=top>
               <img src="admin/uploads/<%# DataBinder.Eval(Container.DataItem, "Hinhanh") %>" width="100px" height="100px" /></td>
               <p></p>
            <td style="padding-right:15px;" class="topic_description" valign=top>
                <%# DataBinder.Eval(Container.DataItem, "Mota")%></td>
            </tr>
            <tr>
                    <td class="topic-more"><a href="ChitietTintuc.aspx?MaTT=<%# DataBinder.Eval(Container.DataItem, "MaTT")%>" alt="" height="50px" width="50px"/><font color=red>
                        Xem chi tiết</font></a></td>
                </tr>
        </table>
   </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc1:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

