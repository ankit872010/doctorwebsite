<%@ Page Title="" Language="C#" MasterPageFile="~/adminpannel/adminmaster.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminpannel_adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <section class="about_section layout_padding">
    <div class="container">
      <div class="custom_heading-container ">
        <h2>
          Admin Home
        </h2>
      </div>
        </div>
      <div class="img-box">
        <img src="../images/about-medicine.png" alt="" />
              <div class="detail-box">
</div>
      </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Width="100%" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Appointmentid" DataSourceID="adminSqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
     <asp:BoundField DataField="Appointmentid" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
            <asp:BoundField DataField="AppointmentTiming" HeaderText="Appointment Timing" SortExpression="AppointmentTiming" />
            <asp:BoundField DataField="appointmentdate" HeaderText="Appointment Date" SortExpression="appointmentdate" />
            <asp:BoundField DataField="Userid" HeaderText="User Id" SortExpression="Userid" />
            <asp:BoundField DataField="Doctorid" HeaderText="Doctor Id" SortExpression="Doctorid" />
            <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Symptomes" HeaderText="Symptomes" SortExpression="Symptomes" />
            <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointmentstatus" SortExpression="Appointmentstatus" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="adminSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT * FROM [tbappointment] where datediff(day,appointmentdate,getdate())=0"></asp:SqlDataSource>        
</section>
</asp:Content>

