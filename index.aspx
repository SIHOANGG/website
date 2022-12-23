<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultMenu" Src="DefaultMenu.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultHeader" Src="DefaultHeader.ascx" %> 
<%@ Register TagPrefix="art" TagName="DefaultSidebar1" Src="DefaultSidebar1.ascx" %>
<%@ Register TagPrefix="cc1" Namespace="SiteUtils" Assembly="CollectionPager" %>

<asp:Content ID="PageTitle" ContentPlaceHolderID="TitleContentPlaceHolder" Runat="Server">
    Page title here...
</asp:Content>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" Runat="Server">
    <art:DefaultHeader ID="DefaultHeader" runat="server" />
</asp:Content>
<asp:Content ID="MenuContent" ContentPlaceHolderID="MenuContentPlaceHolder" Runat="Server">
    <art:DefaultMenu ID="DefaultMenuContent" runat="server" />
</asp:Content>
<asp:Content ID="SideBar1" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <art:DefaultSidebar1 ID="DefaultSidebar1Content" runat="server" />
</asp:Content>

<asp:Content ID="SheetContent" ContentPlaceHolderID="SheetContentPlaceHolder" Runat="Server">

    <asp:Repeater ID="rptTour" runat="server">
         <ItemTemplate > 
   <table>
            <tr>
                <td colspan="3" height="22" align="left">
                <a class="home-a1" href="Chitiettour.aspx?TourID=<%# DataBinder.Eval(Container.DataItem, "Matour")%>"> 
                        <%# DataBinder.Eval(Container.DataItem, "Tentour")%></a> </td>
            </tr>
            <tr>
                <td colspan="3" width="20px"></td>
            </tr>
            <tr>
            <td valign=top>
               <img src="admin/uploads/<%# DataBinder.Eval(Container.DataItem, "Images") %>" width="100px" height="100px" /></td>
               <p></p>
            <td style="padding-right:15px;" class="topic_description" valign=top>
                <%# DataBinder.Eval(Container.DataItem, "Thongtinlienquan")%></td>
            <td>
            <table width="150px">
                <tr>
                    <td class="tour_info">Giá:<div class="from"><%# DataBinder.Eval(Container.DataItem, "Banggia")%></div></td>
                </tr>
                 <tr>
                    <td class="tour_info">Thời lượng:<div class="from"><%# DataBinder.Eval(Container.DataItem, "Thoiluong")%></div></td>
                </tr>
                 <tr>
                    <td class="tour_info">Điểm đến:<div class="from"><%# DataBinder.Eval(Container.DataItem, "Diemden")%></div></td>
                </tr>
                 <tr>
                    <td class="tour_info">Phương tiện<div class="from"><%# DataBinder.Eval(Container.DataItem, "Phuongtien")%></div></td>
                </tr>
                 <tr>
                    <td class="topic-more"><a href="Chitiettour.aspx?TourID=<%# DataBinder.Eval(Container.DataItem, "Matour")%>" alt="" height="50px" width="50px"/><font color=red>
                        Xem chi tiết</font></a></td>
                </tr>
            
            </table>
          </td>
        </tr>
        </table>
   </ItemTemplate>
    </asp:Repeater>
    <table id="tbphantrang" border="0" style="width: 100%">
        <tr>
            <td id="tdphantrang" style="height: 35px">
            <cc1:CollectionPager ID="CollectionPager1" runat="server" BackText="« Trước" FirstText="-- Đầu" LabelText="Trang:" LastText="Cuối" NextText="Sau »" ResultsFormat="Kết quả từ {0}-{1} (của {2}) " ShowFirstLast="True" SliderSize="5" PagingMode="PostBack"></cc1:CollectionPager>
            
            </td>
        </tr>
  </table>

</asp:Content>
