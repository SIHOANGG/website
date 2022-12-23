<%@ Page Language="C#" MasterPageFile="~/design/MasterPage.master" AutoEventWireup="true" CodeFile="DatTour.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<%@ Register src="DefaultMenu.ascx" tagname="DefaultMenu" tagprefix="uc1" %>
<%@ Register src="DefaultSidebar1.ascx" tagname="DefaultSidebar1" tagprefix="uc2" %>

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
    
<form>
 <table width="600px" cellspacing="0" cellpadding="5" bordercolor="#dedede" border="1" style="border-collapse: collapse">
                          
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Họ và tên :</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px"><asp:TextBox ID="txtten" CssClass="txtdattour" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtten" ErrorMessage="(*)">This field is required.</asp:RequiredFieldValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Điện thoại:</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px"><asp:TextBox ID="txtdienthoai" CssClass="txtdattour" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtten" ErrorMessage="RequiredFieldValidator">This field 
                                    is required</asp:RequiredFieldValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Email:</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;"><asp:TextBox ID="txtemail" CssClass="txtdattour" runat="server"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                                        ControlToValidate="txtemail" ErrorMessage="Please enter a valid email address." 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Địa chỉ :</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;"><asp:TextBox ID="txtdiachi" CssClass="txtdattour" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtdiachi" ErrorMessage="(*)">This field is required.</asp:RequiredFieldValidator>
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Số người đi :</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px">
                                    Người lớn:<asp:DropDownList ID="cbsonguoilon" runat="server">
                                    </asp:DropDownList>
                                    Trẻ em :<asp:DropDownList ID="cbsotreem" runat="server">
                                </asp:DropDownList>
                                </td>
                                
                            </tr>
                            <tr>
                            <link href="admin/1-simple-calendar/tcal.css" rel="stylesheet" type="text/css" />
                            <script src="admin/1-simple-calendar/tcal.js" type="text/javascript"></script>
                                <td style="text-align:right;padding-right:5px;" height="30px">Ngày đi :</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px"><asp:TextBox ID="txtngay" class="tcal" runat="server"></asp:TextBox></td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Phương thức thanh toán 
                                    :</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px">
                                    <asp:DropDownList ID="cbthanhtoan" runat="server">
                                    </asp:DropDownList>
                                </td>
                                
                            </tr>
                             <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">Yêu cầu khác:</td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px"><asp:TextBox ID="txtyc" CssClass="txtdattour" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                
                            </tr>
                            <tr>
                                <td style="text-align:right;padding-right:5px;" height="30px">
                                    <asp:Button ID="bntback" runat="server" Text="BACK" onclick="bntback_Click" /></td>
                                <td style="text-align:left;padding-left:5px;font-weight:bold;" height="30px"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="ĐẶT TOUR" 
                                        onclick="Button1_Click" /></td>
                                
                            </tr>
                             
                            <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" Font-Size="20pt" 
                                ForeColor="#FF3300"></asp:Label>
                                  
                          
                           </table>
                         </form>
  
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Sidebar1ContentPlaceHolder" Runat="Server">
    <uc2:DefaultSidebar1 ID="DefaultSidebar11" runat="server" />
</asp:Content>


