<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<%@ Register Src="~/menu.ascx" TagPrefix="uc1" TagName="menu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.aspx">Home</a><span>|</span></li>
				<li>
                    <asp:Literal ID="Literal2" runat="server"></asp:Literal></li>
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
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
				<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="products.aspx" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_sub">
				<h3 class="w3l_fruit"> <asp:Literal ID="Literal1" runat="server"></asp:Literal></h3>
				<div class="w3ls_w3l_banner_nav_right_grid1 w3ls_w3l_banner_nav_right_grid1_veg">
                    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                   
                        <asp:Repeater ID="DataList1" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left_asdfdfd">
						<div class="hover14 column">
						<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
							<div class="agile_top_brand_left_grid_pos">
								<%--<img src="images/offer.png" alt=" " class="img-responsive" />--%>
							</div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="product-details.aspx?id=<%#Eval("id") %>">
                                      

                                                 <asp:Image ID="Image1" runat="server"  ImageUrl=<%#Eval("pimage") %> class="img-responsive" />
											</a>
											<p><%#Eval("pname") %></p>
											<h4>Rs.<%#Eval("price") %> /- <%--<span>$5.00</span>--%></h4>
										</div>
										<div class="snipcart-details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="raisin rolls" />
													<input type="hidden" name="amount" value="4.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
						</div>
					</div>
                        </ItemTemplate>
                  </asp:Repeater>
                    
				
					<div class="clearfix"> </div>
				</div>
			
			</div>

            <div class="w3l_banner_nav_right_banner3_btm">
                <asp:DataList ID="Repeater1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Flow">
                
                    <ItemTemplate>
                        	<div class="col-md-4 w3l_banner_nav_right_banner3_btml">
					<div class="view view-tenth">
                        <asp:Image ID="Image2" runat="server" alt=" " ImageUrl=<%#Eval("categoryimage") %> class="img-responsive" />
					
						<%--<div class="mask">
							<h4><%#Eval("categoryname")%></h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
						</div>--%>
					</div>
					<h4> 	<a href="products.aspx?id=<%#Eval("id") %>"> <%#Eval("categoryname")%></a></h4>
					
				</div>

                    </ItemTemplate>
               </asp:DataList>
			
				
				
				<div class="clearfix"> </div>
			</div>


		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
</asp:Content>

