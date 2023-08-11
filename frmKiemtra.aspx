<%@ page title="Kiểm tra thiết bị đóng cắt" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="frmKiemtra, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">   
    <div class="container-fluid">
        <div class="row">
             <p> <% = Session["Tientrinh"].ToString() %></p>
            <div class="col-sm-9">
                <dx:BootstrapCheckBox ID="chkRot" Text=" Xoay ảnh" runat="server" Checked="True" AutoPostBack="True" ToolTip="Tick chọn nếu bạn muốn xoay ảnh trước khi upload"
                    CheckState="Checked">
                </dx:BootstrapCheckBox>
            </div>
            <div class="col-sm-9">
                <dx:BootstrapRadioButtonList ID="Dakiemtra" RepeatColumns="2" runat="server" ValueType="System.Int16" Width="80%" CssClasses-Item="text-primary">
                    <ClientSideEvents SelectedIndexChanged="function(s, e) { gridKiemtra.PerformCallback(s.GetSelectedIndex()); }" />
                    <Items>
                        <dx:BootstrapListEditItem Selected="True" Text="Danh sách thiết bị chưa kiểm tra" Value="0" />
                        <dx:BootstrapListEditItem Text="Danh sách thiết bị đã kiểm tra" Value="1" />
                    </Items>
                </dx:BootstrapRadioButtonList>
            </div>
        </div>
        <div class="row">
            <dx:BootstrapGridView ID="gridKiemtra" ClientInstanceName="gridKiemtra" runat="server" Settings-ShowPreview="false" DataSourceID="SqlDataSourceKiemtra" EnableRowsCache="False" AutoGenerateColumns="False" KeyFieldName="idKiemtra"
                OnRowUpdating="BootstrapGridView1_RowUpdating">                
                <SettingsDataSecurity AllowEdit="True"></SettingsDataSecurity>
                <SettingsText CommandCancel="Bỏ qua" CommandUpdate="Lưu" CommandEdit="Nhập" SearchPanelEditorNullText="Nhập từ khoá để tìm ..." CommandBatchEditUpdate="Lưu" CommandBatchEditCancel="Bỏ qua" CommandBatchEditPreviewChanges="Xem thay đổi"></SettingsText>
                <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true" />
                <Settings GridLines="Horizontal" ColumnMinWidth="50" />                
                <SettingsBehavior AllowFocusedRow="true" />
                <SettingsText Title="Kiểm tra" />
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
                            <dx:BootstrapGridViewToolbarItem Command="ShowSearchPanel" Text="Tìm kiếm" BeginGroup="true" />
                            <dx:BootstrapGridViewToolbarItem Command="Refresh" Text="Làm mới" BeginGroup="true" AdaptivePriority="2" />
                        </Items>
                    </dx:BootstrapGridViewToolbar>
                </Toolbars>                
                <Columns>
                    <dx:BootstrapGridViewTextColumn FieldName="idKiemtra" ReadOnly="True" Visible="false" VisibleIndex="1">
                        <SettingsEditForm Visible="False"></SettingsEditForm>
                    </dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="idThietbi" Caption="STT" AdaptivePriority="1" VisibleIndex="2">
                        <SettingsEditForm Visible="False"></SettingsEditForm>
                    </dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="Tenthietbi" Caption="Tên thiết bị" AdaptivePriority="1" VisibleIndex="3">
                        <SettingsEditForm Visible="False"></SettingsEditForm>
                    </dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="LBS_Vomay" Caption="Vỏ máy" AdaptivePriority="5" AllowTextTruncationInAdaptiveMode="true"  VisibleIndex="6"/>
                    <dx:BootstrapGridViewTextColumn FieldName="LBS_Chithitrenthietbi" Caption="Chỉ thị trên TB" AdaptivePriority="4" VisibleIndex="7"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Votu" Caption="Vỏ máy" AdaptivePriority="4" VisibleIndex="8"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Roantu" Caption="Roan tủ" AdaptivePriority="4" VisibleIndex="9"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Khoa" Caption="Khoá" AdaptivePriority="4" VisibleIndex="10"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Aptomatcapnguon" Caption="Aptomat cấp nguồn" AdaptivePriority="4" VisibleIndex="11"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Aptomatacquy" Caption="Aptomat ắc quy" AdaptivePriority="4" VisibleIndex="12"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Daucamacquy" Caption="Đầu cắm ắc quy" AdaptivePriority="4" VisibleIndex="13"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Manhinh" Caption="Màn hình" AdaptivePriority="3" VisibleIndex="14"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Raccam" Caption="Rắc cắm" AdaptivePriority="4" VisibleIndex="15"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_AuxSupply" Caption="AuxSupply" AdaptivePriority="4" VisibleIndex="16"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="TDK_Battery" Caption="Battery" AdaptivePriority="3" ToolTip="Điện áp ắc-quy khi tắt nguồn xoay chiều 5 phút (đo bằng Ampe kìm)" VisibleIndex="17"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="TD_Chongset" Caption="Chống sét" AdaptivePriority="4" VisibleIndex="18"/>
                    <dx:BootstrapGridViewTextColumn FieldName="TD_1_Votrungtinh" Caption="Vỏ trung tính" AdaptivePriority="4" VisibleIndex="19"/>
                    <dx:BootstrapGridViewTextColumn FieldName="Ketcaukhac" Caption="Kết cấu khác" AdaptivePriority="4" VisibleIndex="20"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="Tontai" Caption="Tồn tại" AdaptivePriority="3" VisibleIndex="24"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="Bienphapxuly" Caption="Biện pháp xử lý" AdaptivePriority="4" VisibleIndex="25"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="Thoigianxuly" Caption="Thời gian đề nghị xử lý" AdaptivePriority="4" VisibleIndex="26"></dx:BootstrapGridViewTextColumn>
                    <dx:BootstrapGridViewBinaryImageColumn FieldName="Photo" Caption="Ảnh TB" Width="120px" PropertiesBinaryImage-EditingSettings-EmptyValueText  ="Ảnh" VisibleIndex="23" AdaptivePriority="3" CssClasses-HeaderCell="text-primary">
                        <PropertiesBinaryImage ImageHeight="160px" />
                    </dx:BootstrapGridViewBinaryImageColumn>
                    <dx:BootstrapGridViewTextColumn FieldName="Ghichu" Caption="Ghi chú" AdaptivePriority="4" VisibleIndex="27"></dx:BootstrapGridViewTextColumn>
                </Columns>
            </dx:BootstrapGridView>
            <asp:SqlDataSource ID="SqlDataSourceKiemtra" runat="server"
                ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>"
                SelectCommand="sp_Thietbikiemtra" SelectCommandType="StoredProcedure"
                UpdateCommand="sp_Kiemtra_update" UpdateCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Dakiemtra" Name="Dakiemtra" PropertyName="Value" Type="Int16" />
                    <asp:SessionParameter Name="idUser" SessionField="idUser" Type="Int32" />
                    <asp:SessionParameter Name="Tinhchat" SessionField="Tinhchat" Type="String" />
                    <asp:SessionParameter Name="Date" SessionField="Date" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idThietbi" Type="Int32"></asp:Parameter>
                    <asp:SessionParameter Name="Dotkiemtra" SessionField="Dotkiemtra" Type="String" />
                    <asp:SessionParameter Name="Tinhchat" SessionField="Tinhchat" Type="String" />
                    <asp:SessionParameter Name="Nhomkiemtra" SessionField="Nhomkiemtra" Type="String" />
                    <asp:Parameter Name="LBS_Vomay" Type="String"></asp:Parameter>
                    <asp:Parameter Name="LBS_Chithitrenthietbi" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Votu" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Roantu" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Khoa" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Aptomatcapnguon" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Aptomatacquy" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Daucamacquy" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Manhinh" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Raccam" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_AuxSupply" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TDK_Battery" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="TD_Chongset" Type="String"></asp:Parameter>
                    <asp:Parameter Name="TD_1_Votrungtinh" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Ketcaukhac" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Tontai" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Bienphapxuly" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Thoigianxuly" Type="String"></asp:Parameter>
                    <asp:SessionParameter Name="Latitude" SessionField="Latitude" Type="String" />
                    <asp:SessionParameter Name="Longitude" SessionField="Longitude" Type="String" />
                    <asp:Parameter Name="Photo" DbType="Binary"></asp:Parameter>
                    <asp:Parameter Name="Ghichu" Type="String"></asp:Parameter>
                    <asp:SessionParameter Name="idUser" SessionField="idUser" Type="Int32" />
                    <asp:Parameter Name="idKiemtra" Type="Decimal"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

