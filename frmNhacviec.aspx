<%@ page title="Danh sách thiết bị chưa kiểm tra" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="frmNhacviec, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    <br />   
            <dx:BootstrapGridView Caption="Thiết bị chưa kiểm tra" runat="server" ClientInstanceName="gridDotkiemtra" DataSourceID="SqlDataSourceDotkiemtra">
                                    <Settings GridLines="Horizontal" />
                                    <SettingsText SearchPanelEditorNullText="Nhập từ khoá để tìm ..."></SettingsText>
                                    <SettingsPager PageSize="10" FirstPageButton-Text="Trang đầu" AllButton-Text="Tất cả" LastPageButton-Text="Trang cuối" NextPageButton-Text="Trang tiếp" PrevPageButton-Text="Trang trước" ShowEmptyDataRows="false" />
                                    <Columns>
                                        <dx:BootstrapGridViewTextColumn FieldName="STT"  AdaptivePriority="1" ReadOnly="True" VisibleIndex="0">
                                        </dx:BootstrapGridViewTextColumn>
                                        <dx:BootstrapGridViewTextColumn FieldName="Tenthietbi" Caption = "Tên thiết bị"  VisibleIndex="1">
                                        </dx:BootstrapGridViewTextColumn>                                        
                                    </Columns>                                    
                                </dx:BootstrapGridView>  
              <asp:SqlDataSource ID="SqlDataSourceDotkiemtra" runat="server"
        ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>"
        SelectCommand="sp_TBchuakiemtra" SelectCommandType="StoredProcedure">        
    </asp:SqlDataSource>
</asp:Content>