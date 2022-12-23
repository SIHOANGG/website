<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultMenu.ascx.cs" Inherits="Menu" %>

<ul class="art-menu">

   
    <li><a href="index.aspx" class=" active"><span class="l"></span><span class="r"></span><span class="t">Home</span></a></li>
    <li><a href="#"><span class="l"></span><span class="r"></span><span class="t">Tour</span></a>
        <ul>
        <asp:Repeater ID="rptloaitour" runat="server">
             <ItemTemplate>
		    <li><a href="Danhsachtour.aspx?MaLoaiTour=<%# DataBinder.Eval(Container.DataItem, "MaLoaiTour") %>"><%# DataBinder.Eval(Container.DataItem, "TenLoaiTour") %></a></li>
		    </ItemTemplate>
		   </asp:Repeater>
	    </ul>
    </li>
    <li><a href="Home.aspx"><span class="l"></span><span class="r"></span><span class="t">About</span></a></li>
    
    
</ul>
