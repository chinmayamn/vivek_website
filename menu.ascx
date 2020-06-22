<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="menu" %>
<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
					<ul class="nav navbar-nav nav_1">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                 <li><a href="products.aspx?id=<%#Eval("id")%>"><%#Eval("categoryname")%></a></li>
                            </ItemTemplate>
                           
                        </asp:Repeater>
						
					</ul>
				 </div><!-- /.navbar-collapse -->