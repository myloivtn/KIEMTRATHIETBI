<%@ control language="C#" autoeventwireup="true" inherits="Header, UserControls" %>
<div class="demo-header-part demo-area-highlight">   
    <dx:BootstrapToolbar runat="server" ID="HeaderToolbar" ClientInstanceName="HeaderToolbar">
        <CssClasses Control="demo-header-toolbar p-2 justify-content-end" 
            Item="demo-btn-custom-state active-highlight idle-highlight" />
        <SettingsAdaptivity MinRootItemsCount="4" EnableAutoHideRootItems="true" Enabled="true" />
        <SettingsBootstrap RemoveItemBackgrounds="true" />
        <Items>
            <dx:BootstrapToolbarItem IconCssClass="demo-icon demo-icon-menu" CssClass="rounded-circle shadow show-navigation" Name="SideNavToggleBtn" GroupName="SideNavToggleBtn"></dx:BootstrapToolbarItem>
            <%--<dx:BootstrapCustomToolbarItem AdaptivePriority="1">
                <Template>
                    <div class="d-flex align-items-center">
                        <span class="demo-icon demo-icon-search-toolbar"></span>
                        <dx:BootstrapTextBox runat="server" ID="Timkiem" OnValueChanged="Timkiem_ValueChanged" NullText="Nhập từ khoá">
                            <CssClasses Control="demo-header-search ml-1" />
                        </dx:BootstrapTextBox>
                    </div>
                </Template>
            </dx:BootstrapCustomToolbarItem>--%>
            <dx:BootstrapToolbarItem AdaptivePriority="2" Text="Tài khoản"
                CssClass="no-icon demo-header-user-info align-items-center border-0 bg-light text-dark">
               <%-- <TextTemplate>
                    <dx:BootstrapImage runat="server" ImageUrl="~/Content/Icons/demo-user.svg"></dx:BootstrapImage>
                    <span>Tài khoản</span>
                </TextTemplate>--%>

                <Items>                        
         <%--           <dx:BootstrapToolbarMenuItem Name="navigate_profile" Text="Profile" IconCssClass="demo-icon demo-icon-user" />
         --%>           <dx:BootstrapToolbarMenuItem Name="logout" Text="Logout" NavigateUrl="~/frmLogout.aspx" IconCssClass="demo-icon demo-icon-logout" />
                </Items>
            </dx:BootstrapToolbarItem>
            <%--<dx:BootstrapToolbarItem Name="show_messages" IconCssClass="demo-icon demo-icon-mail" CssClass="rounded-circle shadow ml-2 demo-item-wb">
                <Badge Text="" CssClass="demo-badge-floating bg-success text-white" />
            </dx:BootstrapToolbarItem>
            <dx:BootstrapToolbarItem Name="show_notifications" IconCssClass="demo-icon demo-icon-alert" CssClass="rounded-circle shadow ml-2 demo-item-wb">
                <Badge Text="" CssClass="demo-badge-floating bg-danger text-white" />
            </dx:BootstrapToolbarItem>     --%>      
        </Items>
    </dx:BootstrapToolbar>    
</div>