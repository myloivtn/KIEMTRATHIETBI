<%@ page title="Thống kê" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="frmTBmaster, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="Server">
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server" ActiveTabIndex="0" Width="100%">
        <TabPages>
            <dx:BootstrapTabPage Name="ThongkeTheoDotkiemtra" Text="Theo đợt kiểm tra">
                <ContentCollection>
                    <dx:ContentControl runat="server">                       
                                <dx:BootstrapGridView runat="server" ClientInstanceName="gridDotkiemtra" DataSourceID="SqlDataSourceDotkiemtra">
                                    <Settings GridLines="Horizontal" />
                                    <SettingsText SearchPanelEditorNullText="Nhập từ khoá để tìm ..."></SettingsText>
                                    <SettingsPager PageSize="10" FirstPageButton-Text="Trang đầu" AllButton-Text="Tất cả" LastPageButton-Text="Trang cuối" NextPageButton-Text="Trang tiếp" PrevPageButton-Text="Trang trước" ShowEmptyDataRows="false" />
                                    <Columns>
                                        <dx:BootstrapGridViewTextColumn FieldName="STT"  AdaptivePriority="1" ReadOnly="True" VisibleIndex="0">
                                        </dx:BootstrapGridViewTextColumn>
                                        <dx:BootstrapGridViewTextColumn FieldName="Dotkiemtra" Caption="Đợt kiểm tra" AdaptivePriority="1" VisibleIndex="1">
                                        </dx:BootstrapGridViewTextColumn>
                                        <dx:BootstrapGridViewTextColumn FieldName="SoTB" Caption="Tổng số thiết bị" ToolTip="Tổng số thiết bị cần kiểm tra" AdaptivePriority="1" VisibleIndex="2">
                                        </dx:BootstrapGridViewTextColumn>
                                        <dx:BootstrapGridViewTextColumn FieldName="SoTBdaKT" Caption="Đã kiểm tra" ToolTip="Số thiết bị đã kiểm tra" AdaptivePriority="1" VisibleIndex="3">
                                        </dx:BootstrapGridViewTextColumn>                                        
                                        <dx:BootstrapGridViewTextColumn FieldName="SoTBchuaKT" Caption="Chưa kiểm tra" ToolTip="Số thiết bị chưa kiểm tra"  UnboundType="Decimal" UnboundExpression="SoTB - SoTBdaKT">
                                        </dx:BootstrapGridViewTextColumn>
                                        <dx:BootstrapGridViewTextColumn FieldName="Tile" Caption="Tỉ lệ % hoàn thành" ToolTip="Tỉ lệ hoàn thành kiểm tra"  UnboundType="Decimal" UnboundExpression="Round(SoTBdaKT/(SoTB/ 100.0),2)">                                             
                                        </dx:BootstrapGridViewTextColumn>
                                    </Columns>
                                    <FormatConditions>
                                        <dx:GridViewFormatConditionColorScale FieldName="Tile" Format="BlueWhiteRed" />
                                        <dx:GridViewFormatConditionIconSet FieldName="Tile" Format="Ratings4" />
                                        <dx:GridViewFormatConditionIconSet FieldName="SoTBdaKT" Format="Arrows5Colored" />
                                    </FormatConditions>
                                </dx:BootstrapGridView>                            
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
            <dx:BootstrapTabPage Name="ThongkeTheoThietbi" Text="Theo thiết bị">
                <ContentCollection>
                    <dx:ContentControl runat="server">
                        <dx:BootstrapGridView runat="server" DataSourceID="SqlDataSourceThietbi" KeyFieldName="idThietbi">
                            <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true" />
                            <Settings GridLines="Horizontal" />
                            <SettingsText CommandCancel="Bỏ qua" CommandUpdate="Lưu" CommandEdit="Sửa" CommandNew="Thêm" SearchPanelEditorNullText="Nhập từ khoá để tìm ..." CommandBatchEditUpdate="Lưu" CommandBatchEditCancel="Bỏ qua" CommandBatchEditPreviewChanges="Xem thay đổi"></SettingsText>
                            <SettingsPager PageSize="6" FirstPageButton-Text="Trang đầu" PageSizeItemSettings-Caption="Số dòng" AllButton-Text="Tất cả" LastPageButton-Text="Trang cuối" NextPageButton-Text="Trang tiếp" PrevPageButton-Text="Trang trước" ShowEmptyDataRows="false">
                                <PageSizeItemSettings Visible="true" Items="2,6,12,20,50" />
                            </SettingsPager>
                            <SettingsSearchPanel Visible="True"></SettingsSearchPanel>
                            <SettingsDetail ShowDetailRow="true" />
                            <SettingsBehavior EnableRowHotTrack="true" />
                            <SettingsBootstrap Striped="true" />
                            <Settings ShowFooter="true" />
                            <TotalSummary>
                                <dx:ASPxSummaryItem FieldName="Tenthietbi" SummaryType="Count" />
                            </TotalSummary>
                            <Columns>
                                <dx:BootstrapGridViewTextColumn FieldName="idThietbi" AdaptivePriority="1" Caption="STT" ReadOnly="True" VisibleIndex="0">
                                    <SettingsEditForm Visible="False" />
                                </dx:BootstrapGridViewTextColumn>
                                <dx:BootstrapGridViewTextColumn FieldName="Loaithietbi" AdaptivePriority="3" Caption="Loại thiết bị" VisibleIndex="1">
                                </dx:BootstrapGridViewTextColumn>
                                <dx:BootstrapGridViewTextColumn FieldName="Tenthietbi" AdaptivePriority="1" Caption="Tên thiết bị" VisibleIndex="2">
                                </dx:BootstrapGridViewTextColumn>                                
                                <dx:BootstrapGridViewTextColumn FieldName="Duongday" AdaptivePriority="3" Caption="Đường dây" VisibleIndex="3">
                                </dx:BootstrapGridViewTextColumn>
                                <dx:BootstrapGridViewTextColumn FieldName="SolanKT" AdaptivePriority="1" Caption="Số lần kiểm tra" VisibleIndex="4">
                                </dx:BootstrapGridViewTextColumn>
                                <dx:BootstrapGridViewDateColumn FieldName="Ngaykiemtragannhat" AdaptivePriority="2" Caption="Ngày kiểm tra gần nhất" VisibleIndex="5">
                                </dx:BootstrapGridViewDateColumn>
                                <dx:BootstrapGridViewTextColumn FieldName="Loaiacquy" AdaptivePriority="3" Caption="Loại ắc quy" VisibleIndex="6">
                                </dx:BootstrapGridViewTextColumn>
                                <dx:BootstrapGridViewDateColumn FieldName="Ngaythayacquygannhat" AdaptivePriority="3" Caption="Ngày thay ắc quy gần nhất" VisibleIndex="7">
                                </dx:BootstrapGridViewDateColumn>
                                <dx:BootstrapGridViewTextColumn FieldName="Ghichu" AdaptivePriority="2" Caption="Ghi chú" VisibleIndex="8">
                                </dx:BootstrapGridViewTextColumn>
                            </Columns>
                            <FormatConditions>
                                <dx:GridViewFormatConditionIconSet FieldName="SolanKT" Format="Ratings4" />
                                <dx:GridViewFormatConditionColorScale FieldName="SolanKT" Format= "GreenYellowRed"/>
                            </FormatConditions>
                            <Templates>
                                <DetailRow>
                                    <dx:BootstrapGridView runat="server" DataSourceID="SqlDataSourceKiemtra" KeyFieldName="idKiemtra"
                                        OnBeforePerformDataSelect="detailGrid_DataSelect">
                                        <SettingsAdaptivity AdaptivityMode="HideDataCells" AllowOnlyOneAdaptiveDetailExpanded="true" />
                                        <Settings GridLines="Horizontal" />
                                        <Columns>                                            
                                            <dx:BootstrapGridViewTextColumn FieldName="Dotkiemtra" Caption="Đợt kiểm tra" AdaptivePriority="1" VisibleIndex="0">                                                
                                            </dx:BootstrapGridViewTextColumn>                                                                                        
                                            <dx:BootstrapGridViewTextColumn FieldName="Tenthietbi" Caption="Tên thiết bị" AdaptivePriority="1" VisibleIndex="1">                                                
                                            </dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="LBS_Vomay" Caption="Vỏ máy" AdaptivePriority="5" VisibleIndex="6"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="LBS_Chithitrenthietbi" Caption="Chỉ thị trên TB" AdaptivePriority="4" VisibleIndex="7"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Votu" Caption="Vỏ tủ" AdaptivePriority="4" VisibleIndex="8"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Roantu" Caption="Roan tủ" AdaptivePriority="4" VisibleIndex="9"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Khoa" Caption="Khoá" AdaptivePriority="4" VisibleIndex="10"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Aptomatcapnguon" Caption="Aptomat cấp nguồn" AdaptivePriority="4" VisibleIndex="11"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Aptomatacquy" Caption="Aptomat ắc quy" AdaptivePriority="4" VisibleIndex="12"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Daucamacquy" Caption="Đầu cắm ắc quy" AdaptivePriority="4" VisibleIndex="13"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Manhinh" Caption="Màn hình" AdaptivePriority="3" VisibleIndex="14"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Raccam" Caption="Rắc cắm" AdaptivePriority="4" VisibleIndex="15"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_AuxSupply" Caption="AuxSupply" AdaptivePriority="4" VisibleIndex="16"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TDK_Battery" Caption="Battery" AdaptivePriority="2" ToolTip="Điện áp ắc-quy khi tắt nguồn xoay chiều 5 phút (đo bằng Ampe kìm)" VisibleIndex="17"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TD_Chongset" Caption="Chống sét" AdaptivePriority="4" VisibleIndex="18"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="TD_1_Votrungtinh" Caption="Vỏ trung tính" AdaptivePriority="4" VisibleIndex="19"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Ketcaukhac" Caption="Kết cấu khác" AdaptivePriority="4" VisibleIndex="20"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Tontai" Caption="Tồn tại" AdaptivePriority="3" VisibleIndex="24"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Bienphapxuly" Caption="Biện pháp xử lý" AdaptivePriority="4" VisibleIndex="25"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Thoigianxuly" Caption="Thời gian đề nghị xử lý" AdaptivePriority="4" VisibleIndex="26"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Latitude" AdaptivePriority="4" VisibleIndex="21"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Longitude" AdaptivePriority="4" VisibleIndex="22"></dx:BootstrapGridViewTextColumn>
                                            <dx:BootstrapGridViewBinaryImageColumn FieldName="Photo" Caption="Ảnh TB" Width="120px" VisibleIndex="23" AdaptivePriority="2" CssClasses-HeaderCell="text-primary">
                                                <PropertiesBinaryImage ImageHeight="160px" />
                                            </dx:BootstrapGridViewBinaryImageColumn>
                                            <dx:BootstrapGridViewTextColumn FieldName="Ghichu" Caption="Ghi chú" AdaptivePriority="4" VisibleIndex="27"></dx:BootstrapGridViewTextColumn>
                                        </Columns>                                       
                                    </dx:BootstrapGridView>
                                </DetailRow>
                            </Templates>
                        </dx:BootstrapGridView>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>            
        </TabPages>
    </dx:BootstrapPageControl>
    <asp:SqlDataSource ID="SqlDataSourceThietbi" runat="server"
        ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>"
        SelectCommand="sp_Thietbimaster"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceKiemtra" runat="server"
        ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>"
        SelectCommand="sp_Thietbidetail" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="idThietbi" SessionField="idThietbi" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceDotkiemtra" runat="server"
        ConnectionString="<%$ ConnectionStrings:THIETBIKTConnectionString %>"
        SelectCommand="sp_ThongkeDotkiemtra" SelectCommandType="StoredProcedure">        
    </asp:SqlDataSource>
</asp:Content>

