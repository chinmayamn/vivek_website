<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<%@ Register Src="~/menu.ascx" TagPrefix="uc1" TagName="menu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.aspx">Home</a><span>|</span></li>
				<li>Services</li>
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
<!-- services -->
		<div class="services">
			<h3>Services</h3>
			<div class="w3ls_service_grids">
            <asp:Label ID="Label1" runat="server" ></asp:Label>
				
				<div class="clearfix"> </div>
			</div>
			
		</div>
<!-- //services -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- services-bottom -->
	<div class="services-bottom">
		<div class="container">
			<div class="col-md-3 about_counter_left">
				<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
				<p class="counter">89,147</p> 
				<h3>Followers</h3>
			</div>
			<div class="col-md-3 about_counter_left">
				<i class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></i>
				<p class="counter">54,598</p> 
				<h3>Savings</h3>
			</div>
			<div class="col-md-3 about_counter_left">
				<i class="glyphicon glyphicon-export" aria-hidden="true"></i>
				<p class="counter">83,983</p> 
				<h3>Support</h3>
			</div>
			<div class="col-md-3 about_counter_left">
				<i class="glyphicon glyphicon-bullhorn" aria-hidden="true"></i>
				<p class="counter">45,894</p> 
				<h3>Popularity</h3>
			</div>
			<div class="clearfix"> </div>
			<!-- Stats-Number-Scroller-Animation-JavaScript -->
				<script src="js/waypoints.min.js"></script> 
				<script src="js/counterup.min.js"></script> 
				<script>
					jQuery(document).ready(function( $ ) {
						$('.counter').counterUp({
							delay: 10,
							time: 1000
						});
					});
				</script>
			<!-- //Stats-Number-Scroller-Animation-JavaScript -->

		</div>
	</div>
<!-- //services-bottom -->
</asp:Content>

