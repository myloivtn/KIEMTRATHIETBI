<%@ page title="Trang chủ" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="_Default, Root" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
     <div class="jumbotron">
      <div class="row">
           <div class="col-lg-4">
          <h2>Cập nhật kết quả kiểm tra</h2>
          <p>Nhân viên kỹ thuật cập nhật kết quả, các tồn tại và đề xuất xử lý sau kiểm tra.</p>
          <a href="frmKiemtra.aspx"><input type="button" class="button" value="Kết quả kiểm tra" /></a>
       </div>      
        <div class="col-lg-4">
          <h2>Cập nhật thiết bị</h2>
          <p>Chức năng cập nhật thiết bị khi đưa thêm thiết bị vào vận hành, thiết bị không còn vận hành hoặc trong quá trình vận hành có các thay đổi như di dời vị trí lắp đặt, thay ắc quy,... sẽ được cập nhật lại.               
           </p>
           <a href="frmThietbi.aspx"><input type="button" class="button" value="Cập nhật thiết bị" /></a>
        </div>         
      </div>
      <div class="row">
           <div class="col-lg-4">
          <h2>Thống kê kết quả</h2>
          <p>Tổng hợp kết quả kiểm tra.</p>
          <a href="frmTBmaster.aspx"><input type="button" class="button" value="Thống kê" /></a>
       </div>        
        <div class="col-lg-4">
          <h2>Nhắc việc</h2>
          <p>Danh sách các thiết bị chưa kiểm tra trong kỳ.</p>  
            <a href="frmNhacviec.aspx"><input type="button" class="button" value="Nhắc việc" /></a>
        </div>         
      </div>
     </div>   
</asp:Content>

