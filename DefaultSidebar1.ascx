<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DefaultSidebar1.ascx.cs" Inherits="Sidebar1" %>
<%@ Import Namespace="Artisteer" %>
<%@ Register TagPrefix="artisteer" Namespace="Artisteer" %>
<%@ Register TagPrefix="art" TagName="DefaultVerticalMenu" Src="DefaultVerticalMenu.ascx" %>

<art:DefaultVerticalMenu ID="DefaultVMenuContent" runat="server" />

<script src="js/ajax.js" type="text/javascript"></script>
<style>
.ctd
{
	border-bottom:1px solid #ccc;
	border-right:1px solid #ccc
}
.bor_ctd
{
	border-top:1px solid #ccc;
	border-left:1px solid #ccc
}
td
{
	font-size:12px}
.bg_tb
{
	background:url(images_TG/bg.png);
	background-repeat:repeat-x}
</style>
  <div class="art-block">
    <div class="art-block-body">

<div class="art-blockcontent">
    <div class="art-blockcontent-tl"></div>
    <div class="art-blockcontent-tr"></div>
    <div class="art-blockcontent-bl"></div>
    <div class="art-blockcontent-br"></div>
    <div class="art-blockcontent-tc"></div>
    <div class="art-blockcontent-bc"></div>
    <div class="art-blockcontent-cl"></div>
    <div class="art-blockcontent-cr"></div>
    <div class="art-blockcontent-cc"></div>
    <div class="art-blockcontent-body">

 <div>
                            <table style="background: none repeat scroll 0 0 #FFFFFF;" align="center">
                                <tr>
                                    <td valign="middle" align="center" style="background: #ffffff; vertical-align: top; height: auto; overflow: hidden; border: solid 2px #f2f2f2">
                                            <div style="height: auto; width: 180px; -moz-border-radius: 8px; -webkit-border-radius: 8px; -kshtmll-border-radius: 8px; padding-top: 1px; margin-left: 2px; margin-top: 2px; margin-bottom: 2px; padding-left: 0; padding-right: 0; padding-bottom: 0;">
                                                <h3 style="border-bottom: dashed 1px Gray; font-family: Arial; font-size: 13px; text-align: left; margin: 2px; color: #069"> TÌM KIẾM TOUR DU LỊCH </h3>
                                                    <table>
                                                        <tr>
                                                            <td style="text-align: left; font-weight: bold; width: 125px;">
                                                                            <b>Tên tour:</b></td>
                                                        </tr>
                                                        
                                                         <tr>
                                                            <td><asp:TextBox ID="txttentour" runat="server" Width="150"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td style="text-align: left; font-weight: bold; width: 125px;">
                                                            <b>Giá tour:</b>
                                                            </td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:TextBox ID="txtgiatour" runat="server" Width="150"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td align="center">
                                                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                    ImageUrl="~/images_index/timkiem3.gif" onclick="ImageButton1_Click" /></td>
                                                        </tr>
                                                        
                                                        
                                                    </table>
                                            </div>
                                    </td>
                                </tr>
                            </table>
                            </div>


		<div class="cleared"></div>
    </div>
</div>


		<div class="cleared"></div>
    </div>
</div>
<div class="art-block">
    <div class="art-block-body">

<div class="art-blockcontent">
    <div class="art-blockcontent-tl"></div>
    <div class="art-blockcontent-tr"></div>
    <div class="art-blockcontent-bl"></div>
    <div class="art-blockcontent-br"></div>
    <div class="art-blockcontent-tc"></div>
    <div class="art-blockcontent-bc"></div>
    <div class="art-blockcontent-cl"></div>
    <div class="art-blockcontent-cr"></div>
    <div class="art-blockcontent-cc"></div>
    <div class="art-blockcontent-body">

                
<table width="180" border="0" cellpadding="0"  cellspacing="0" class="bg_tb">
	<tr>
		<td style="border-right:1px dashed #ccc;padding:5px">
			<table width="180" border="0" cellspacing="0" cellpadding="0">
          		<tr>
					<td><img src="images_TG/cloud.png"  width="25px" style="vertical-align:middle" alt="Cập nhật thời tiết" /> <b>Thời tiết</b></td>
          		</tr>
             <form name="form1" method="post">
                <tr height="20px">
                    <td>
                        <select name="select" onChange="Weather(this.value);">

                         <option value="0">TP.HCM</option>
                        <option value="1">Sơn la</option>
                        <option value="2">Hải Phòng</option>
                        <option value="3">Hà Nội</option>
                        <option value="4">Vinh</option>
                        <option value="5">Đà Nẵng</option>

                        <option value="6">Nha Trang</option>
                        <option value="7">Pleiku</option>
                        </select>
                	</td>
                </tr>
              </form>
                <tr>
                     <td id="content_Weather"><script>Weather(0)</script></td>

                </tr>
			</table>
		</td>
	</tr>
		<tr>
			<td style="padding:5px;padding-left:10px">
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
         			<tr>
						<td colspan="2">
          					<img src="images_TG/money.png" style="vertical-align:middle" width="25px" alt="" />  
               				<b>Giá vàng 9999</b>
       				  </td>
					</tr>

         			<tr>
		 				<td>
        					<table class="bor_ctd" border="0"  cellpadding="0" cellspacing="0" width="100%" bgcolor="#ffffff">
            					<script type="text/javascript" language="JavaScript" src="http://www.vnexpress.net/Service/Gold_Content.js"></script>

                                <script src="js/giavang.js" type="text/javascript"></script>
             				</table>
            			</td>
					</tr>
       		</table>
			</td>
		</tr>
			<tr>
				 <td style="padding:5px;padding-left:10px">
				 	<table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td colspan="2">
                                            <img src="images_TG/circle-chart.png" style="vertical-align:middle" alt="" />  
                                      <b>Tỷ giá</b>                              </td>

                                </tr>
                                <tr>
                                    <td colspan="2" width="100%">
                                        <div id="AdTyGiaLoc" style="display: block;height:80px;width:100%;overflow:scroll">
                                            <script type="text/javascript" language="JavaScript" src="http://www.vnexpress.net/Service/Forex_Content.js"></script>

                                            <script src="js/tygia.js" type="text/javascript"></script>
                                        </div>
                                    </td>

                                </tr>
                   </table>	
				 </td>
			</tr>
</table>


		<div class="cleared"></div>
    </div>
</div>


		<div class="cleared"></div>
    </div>
</div>
