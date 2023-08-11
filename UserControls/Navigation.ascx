<%@ control language="C#" autoeventwireup="true" inherits="Navigation, UserControls" %>
<dx:BootstrapTreeView runat="server">
    <CssClasses
        IconExpandNode="demo-icon demo-icon-col m-0"
        IconCollapseNode="demo-icon demo-icon-ex m-0"
        NodeList="demo-treeview-nodes m-0" Node="demo-treeview-node" Control="demo-treeview" />
    <Nodes>
        <dx:BootstrapTreeViewNode Text="Trang chủ" NavigateUrl="~/Default.aspx" Expanded="true">
            <Nodes>
                <dx:BootstrapTreeViewNode Text="Kiểm tra" NavigateUrl="~/frmKiemtra.aspx"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text="Thiết bị" NavigateUrl="~/frmThietbi.aspx"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text="Thống kê" NavigateUrl="~/frmTBmaster.aspx"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text=" Thoát" NavigateUrl="~/frmLogout.aspx"></dx:BootstrapTreeViewNode>
                 
            </Nodes>
        </dx:BootstrapTreeViewNode>      
           <dx:BootstrapTreeViewNode Text="Tài liệu" >
            <Nodes>
                <dx:BootstrapTreeViewNode Text="Tài liệu" NavigateUrl="~/Tailieu.htm" Target="_blank"></dx:BootstrapTreeViewNode>
                <dx:BootstrapTreeViewNode Text="Mẫu phiếu" NavigateUrl="~/mauphieu.htm" Target="_blank"></dx:BootstrapTreeViewNode>                
            </Nodes>
        </dx:BootstrapTreeViewNode>
    </Nodes>
</dx:BootstrapTreeView>