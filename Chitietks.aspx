<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="Chitietks.aspx.cs" Inherits="Chitietks" Title="Untitled Page" %>

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
      <asp:Repeater ID="rpkschitiet" runat="server">
      <ItemTemplate > 
    <table height="100%" style="border:#d8d8d8 1px solid;background-color:#fff;padding:10px;padding-top:5px;">
        <tr>
          <td style="padding:3px;padding-left:0px;font-weight:bold;border-bottom: #b4b4b4 1px solid;font-size:16px;color:#333333;">
                Trang chủ > Khách Sạn - Nhà Hàng
          </td>
            
        </tr>
        <tr>
           
                <td style="text-align:center;padding-top:10px;padding-bottom:5px;">
                <h1 style="font-size:18px;font-weight:bold;text-align:center;padding:0px;margin:0px; color:blue;"> <%# DataBinder.Eval(Container.DataItem, "TenKhachSan")%></h1>
                </td>
           
        </tr>
        <tr>
            <td>
               <%# DataBinder.Eval(Container.DataItem, "Thongtinchitiet")%> 
            </td>
        </tr>
    </table>
    </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc1:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>

