<%@ Page Title="" Language="C#" MasterPageFile="~/Hospitalpannel/hospitalpannel.master" AutoEventWireup="true" CodeFile="Myhome.aspx.cs" Inherits="Hospitalpannel_Myhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <section class="about_section layout_padding">
    <div class="container">
      <div class="custom_heading-container ">
        <h2>
          My Home
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
     <asp:BoundField DataField="Appointmentid" HeaderText="Appointmentid" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
            <asp:BoundField DataField="AppointmentTiming" HeaderText="AppointmentTiming" SortExpression="AppointmentTiming" />
            <asp:BoundField DataField="appointmentdate" HeaderText="appointmentdate" SortExpression="appointmentdate" />
            <asp:BoundField DataField="Patientname" HeaderText="Patientname" SortExpression="Patientname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Symptomes" HeaderText="Symptomes" SortExpression="Symptomes" />
            <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointmentstatus" SortExpression="Appointmentstatus" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
            <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
            <asp:BoundField DataField="statusfield" HeaderText="statusfield" SortExpression="statusfield" />
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
    <asp:SqlDataSource ID="adminSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbappointment.Appointmentid, tbappointment.AppointmentTiming, tbappointment.appointmentdate, tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbappointment.Appointmentstatus, tbdoctor.name, tbdoctor.address, tbdoctor.city, tbhospital.name AS Expr1, tbhospital.address AS Expr2, tbhospital.statusfield FROM tbappointment INNER JOIN tbdoctor ON tbappointment.Doctorid = tbdoctor.doctorid INNER JOIN tbhospital ON tbdoctor.hospitalid = tbhospital.hospitalid WHERE (DATEDIFF(day, tbappointment.appointmentdate, GETDATE()) = 0)"></asp:SqlDataSource>        
</section>

</asp:Content>

