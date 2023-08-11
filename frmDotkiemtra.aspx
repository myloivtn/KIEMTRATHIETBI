<%@ page title="" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="frmDotkiemtra, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">    
     <script>         function saveLocation(latitude, longitude) {             var xhr = new XMLHttpRequest();             xhr.open("GET", "SaveLocation.aspx?latitude=" + latitude + "&longitude=" + longitude, true);             xhr.send();         }         function getLocation() {             if (navigator.geolocation) {                 navigator.geolocation.getCurrentPosition(function (position) {                     var latitude = position.coords.latitude;                     var longitude = position.coords.longitude;                     // Gửi yêu cầu để lưu vị trí vào cơ sở dữ liệu                     saveLocation(latitude, longitude);                         location.reload();                 });                              } else {                 alert("Định vị địa lý không được trình duyệt này hỗ trợ.");             }                      }    </script>

    <dx:BootstrapFormLayout runat="server" LayoutType="Vertical">
    <Items>        
        <dx:BootstrapLayoutItem Caption="Tên người kiểm tra" ColSpanLg="4" ColSpanMd="6">
            <ContentCollection>
                <dx:ContentControl>
                    <dx:BootstrapTextBox ID="Nhomkiemtra" NullText="Nhập tên..." runat="server">
                        <CssClasses Control="ctrl-fixed-width-lg" />
                        <ValidationSettings ValidationGroup="Validation">
                            <RequiredField IsRequired="true" ErrorText="Tên người kiểm tra là bắt buộc" />
                        </ValidationSettings>
                    </dx:BootstrapTextBox>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>       
        <dx:BootstrapLayoutItem Caption="Ngày kiểm tra" ColSpanLg="4" ColSpanMd="6">
            <ContentCollection>
                <dx:ContentControl>
                    <dx:BootstrapDateEdit ID="Ngaykiemtra"  NullText="Ngày kiểm tra..." runat="server" Width="200px" OnDateChanged="Ngaykiemtra_Changed" AutoPostBack="true" DisplayFormatString="yyyy-MM-dd" ToolTip="Chọn ngày kiểm tra">
                <CssClasses Control="ctrl-fixed-width-lg" />
                <ValidationSettings ValidationGroup="Validation">
                    <RequiredField IsRequired="true" ErrorText="Birthday is required" />
                </ValidationSettings>
            </dx:BootstrapDateEdit>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>  
         <dx:BootstrapLayoutItem ShowCaption="False" ColSpanLg="4" ColSpanMd="6">
            <ContentCollection>
                <dx:ContentControl>
                    <div class="form-control-plaintext">
                        <dx:BootstrapRadioButtonList ID="RadioButtonListTinhchat" runat="server" RepeatColumns="2">
                            <CssClasses Control="ctrl-fixed-width-lg" />
                            <Items>
                                <dx:BootstrapListEditItem Text="Định kỳ" Value="Định kỳ" Selected="true" />
                                <dx:BootstrapListEditItem Text="Đột xuất" Value="Đột xuất" />
                            </Items>
                        </dx:BootstrapRadioButtonList>
                    </div>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>
        <dx:BootstrapLayoutItem ShowCaption="False">
            <ContentCollection>
                <dx:ContentControl>
                    <dx:BootstrapButton ID="ButtonOK" runat="server" Text="OK" OnClick="Batdaukiemtra_Click">
                        <ClientSideEvents Click="function(s, e) { e.processOnServer = ASPxClientEdit.ValidateGroup('Validation'); }" />
                        <CssClasses Icon="fa fa-check" />
                    </dx:BootstrapButton>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>
        <%--<dx:BootstrapLayoutItem ShowCaption="False">
            <ContentCollection>
                <dx:ContentControl>
                    <dx:BootstrapButton ID="ButtonCancel" runat="server" Text="Bỏ qua" SettingsBootstrap-RenderOption="Link" AutoPostBack="false">
                        <ClientSideEvents Click="function(s, e) { ASPxClientEdit.ClearGroup('Validation'); }" />
                    </dx:BootstrapButton>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>--%>
        <dx:BootstrapLayoutItem ShowCaption="False">
            <ContentCollection>
                <dx:ContentControl>
                    <dx:ASPxButton runat="server" ID="Layvitri" ClientSideEvents-Click="getLocation()"  AutoPostBack="true" Text ="Lấy toạ độ"> </dx:ASPxButton>
                </dx:ContentControl>
            </ContentCollection>
        </dx:BootstrapLayoutItem>
    </Items>
</dx:BootstrapFormLayout>
    
</asp:Content>

