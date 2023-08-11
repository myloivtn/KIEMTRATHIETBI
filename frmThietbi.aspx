<%@ page title="Danh sách thiết bị đóng cắt" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="frmThietbi, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    <br />   
    <dx:BootstrapGridView ID="BootstrapGridViewThietbi" runat="server" DataSourceID="SqlDataSourceThietbi" SettingsText-EmptyDataRow = "Chưa có dữ liệu" AutoGenerateColumns="False" KeyFieldName="idThietbi">
        <SettingsDataSecurity AllowEdit="True" AllowInsert="True"></SettingsDataSecurity>
        <SettingsText CommandCancel="Bỏ qua" CommandUpdate="Lưu" CommandEdit="Sửa"  CommandNew ="Thêm" SearchPanelEditorNullText="Nhập từ khoá để tìm ..." CommandBatchEditUpdate="Lưu" CommandBatchEditCancel="Bỏ qua" CommandBatchEditPreviewChanges="Xem thay đổi"></SettingsText>
        <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true" />
        <Settings GridLines="Horizontal" />
        <SettingsDataSecurity AllowEdit="True" AllowInsert="True" />
        <SettingsBehavior AllowFocusedRow="true" />        
        <SettingsText Title="Thiết bị" />
        <SettingsBehavior AllowFocusedRow="true" />
        <SettingsPager PageSize="6" FirstPageButton-Text="Trang đầu" PageSizeItemSettings-Caption="Số dòng" AllButton-Text="Tất cả" LastPageButton-Text="Trang cuối" NextPageButton-Text="Trang tiếp" PrevPageButton-Text="Trang trước" ShowEmptyDataRows="false">
            <PageSizeItemSettings Visible="true" Items="2,6,12,20,50" />
        </SettingsPager>
        <Settings ShowFooter="true" />
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="Tenthietbi" SummaryType="Count" />
        </TotalSummary>
        <Toolbars>
            <dx:BootstrapGridViewToolbar Position="Top" ShowInsidePanel="true">
                <SettingsAdaptivity Enabled="true" EnableCollapseRootItemsToIcons="True" MinRootItemsCount="4" />
                <Items>
                    <dx:BootstrapGridViewToolbarItem Command="Edit" Text="Sửa" />
                    <dx:BootstrapGridViewToolbarItem Command="New" Text="Nhập mới" />                    
                    <dx:BootstrapGridViewToolbarItem Command="ShowSearchPanel" Text="Tìm kiếm" BeginGroup ="true"/>
                    <dx:BootstrapGridViewToolbarItem Command="Refresh" Text="Làm mới" BeginGroup="true" AdaptivePriority="2" />
                </Items>
            </dx:BootstrapGridViewToolbar>
        </Toolbars>        
        <Columns>            
            <dx:BootstrapGridViewTextColumn FieldName="idThietbi" ReadOnly="True" Caption="STT" Visible="true" VisibleIndex="0">
                <SettingsEditForm Visible="False" />
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Tenthietbi" Caption ="Tên thiết bị" VisibleIndex="1">
            </dx:BootstrapGridViewTextColumn>
             <dx:BootstrapGridViewTextColumn FieldName="Loaithietbi" Caption="Loại thiết bị" VisibleIndex="2">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Hangsanxuat" Caption="Hãng sản xuất" VisibleIndex="3">
            </dx:BootstrapGridViewTextColumn>
             <dx:BootstrapGridViewTextColumn FieldName="Dungluongacquy" Caption="Dung lượng ắc quy" VisibleIndex="4">
            </dx:BootstrapGridViewTextColumn>
             <dx:BootstrapGridViewTextColumn FieldName="Loaiacquy" Caption= "Loại ắc quy" Visible="false" VisibleIndex="5">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewDateColumn FieldName="Ngaythayacquygannhat" Caption="Ngày thay ắc quy gần nhất" VisibleIndex="6">
            </dx:BootstrapGridViewDateColumn>
            <dx:BootstrapGridViewTextColumn FieldName="Trangthai" Caption="Trạng thái" VisibleIndex="7">
            </dx:BootstrapGridViewTextColumn>            
            <dx:BootstrapGridViewTextColumn FieldName="Ghichu" Caption="Ghi chú" VisibleIndex="8">
            </dx:BootstrapGridViewTextColumn>
        </Columns>        
    </dx:BootstrapGridView>    
    <asp:SqlDataSource ID="SqlDataSourceThietbi" runat="server"         
        ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>" 
        DeleteCommand="DELETE FROM [THIETBI] WHERE [idThietbi] = @idThietbi" 
        InsertCommand="sp_Thietbi_update" InsertCommandType ="StoredProcedure"
        SelectCommand="sp_Thietbi" 
        UpdateCommand="sp_Thietbi_update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="idThietbi" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idThietbi" DefaultValue ="-1" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Tenthietbi" Type="String"></asp:Parameter>
            <asp:Parameter Name="Loaiacquy" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ngaythayacquygannhat" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Trangthai" Type="String"></asp:Parameter>
            <asp:Parameter Name="Loaithietbi" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hangsanxuat" Type="String"></asp:Parameter>
            <asp:Parameter Name="Dungluongacquy" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ghichu" Type="String"></asp:Parameter>            
            <asp:SessionParameter Name="idUser" SessionField="idUser" Type="Int32" /> 
        </InsertParameters>
        <UpdateParameters> 
            <asp:Parameter Name="idThietbi" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Tenthietbi" Type="String"></asp:Parameter>
            <asp:Parameter Name="Loaiacquy" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ngaythayacquygannhat" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Trangthai" Type="String"></asp:Parameter>
            <asp:Parameter Name="Loaithietbi" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hangsanxuat" Type="String"></asp:Parameter>
            <asp:Parameter Name="Dungluongacquy" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ghichu" Type="String"></asp:Parameter>            
            <asp:SessionParameter Name="idUser" SessionField="idUser" Type="Int32" /> 
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

