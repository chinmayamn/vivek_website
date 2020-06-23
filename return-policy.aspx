<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="return-policy.aspx.cs" Inherits="return_policy" %>

<%@ Register Src="~/menu.ascx" TagPrefix="uc1" TagName="menu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.aspx">Home</a><span>|</span></li>
				<li>Return Policy</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
<uc1:menu runat="server" id="menu" />
				<!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<!-- privacy -->
		<div class="privacy">
			<div class="privacy1">
				<h3>Return Policy</h3>
				<div class="banner-bottom-grid1 privacy1-grid">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>
				</div>
			</div>
			
		</div>
<!-- //privacy -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
</asp:Content>

