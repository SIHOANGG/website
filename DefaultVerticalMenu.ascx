<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultVerticalMenu.ascx.cs" Inherits="VMenu" %>

<div class="art-vmenublock">
    <div class="art-vmenublock-body">
<div class="art-vmenublockheader">
    <div class="l"></div>
    <div class="r"></div>
    <h3 class="t">Navigation</h3>
</div>
<div class="art-vmenublockcontent">
    <div class="art-vmenublockcontent-body">
<ul class="art-vmenu">
	<li>
		<a href="Home.aspx"><span class="l"></span><span class="r"></span><span class="t">Home</span></a>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Ẩm thực du lịch</span></a>
				<ul>
			<li><a href="#">Top 10</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span class="l"></span><span class="r"></span><span class="t">Dich vụ du lịch</span></a>
		<ul>
			<asp:Repeater ID="rptloaidv" runat="server">
             <ItemTemplate>
		    <li><a href="Dichvu.aspx?MaLoaiDichVu=<%# DataBinder.Eval(Container.DataItem, "MaLoaiDichVu") %>"><%# DataBinder.Eval(Container.DataItem, "TenLoaiDichVu") %></a></li>
		    </ItemTemplate>
		   </asp:Repeater>
	    </ul>
		</li>
	<li>
		<a href="Khachsan.aspx"><span class="l"></span><span class="r"></span><span class="t">Nhà hàng - Khách sạn</span></a>
	</li>
	
	<li><a href="#"><span class="l"></span><span class="r"></span><span class="t">Thông tin du lịch</span></a>
		<ul>
			
		    <li><a href="Tintuc.aspx">Tin tức du lịch</a></li>
	
		</ul>
	</li>
	<li><a href="#"><span class="l"></span><span class="r"></span><span class="t">Danh thắng Việt Nam</span></a>
</ul>


		<div class="cleared"></div>
    </div>
</div>

		<div class="cleared"></div>
    </div>
</div>
