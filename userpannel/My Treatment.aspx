<%@ Page Title="" Language="C#" MasterPageFile="~/userpannel/User.master" AutoEventWireup="true" CodeFile="My Treatment.aspx.cs" Inherits="userpannel_My_Treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="about_section layout_padding">
    <div class="container">
      <div class="custom_heading-container ">
        <h2>
           My Treatment
        </h2>
      </div>

      <div class="img-box">
          <img src="../adminpannel/images%20of%20doctor/1667488405006.jpg" height="400" width="50%"/>
      </div>
      <div class="detail-box">
       
            <pre>
                </div>
        </div>
             

          <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="name" HeaderText=" Doctor Name" SortExpression="name" />
                <asp:BoundField DataField="qualification" HeaderText="Qualification" SortExpression="qualification" />
            <asp:BoundField DataField="treatmentdate" HeaderText="Treatment Date" SortExpression="treatmentdate" />
            <asp:BoundField DataField="treatmentcost" HeaderText="Treatment Cost" SortExpression="treatmentcost" />
            <asp:BoundField DataField="previoushospitalname" HeaderText="Previous Hospital Name" SortExpression="previoushospitalname" />
             <asp:BoundField DataField="treatmentdescription" HeaderText="Treatment Description" SortExpression="treatmentdescription" />
            <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
             <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
              <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Symptomes" HeaderText="Symptoms" SortExpression="Symptomes" />
            <asp:BoundField DataField="AppointmentTiming" HeaderText="Appointment Timing" SortExpression="AppointmentTiming" />
            <asp:BoundField DataField="appointmentdate" HeaderText="Appointment Date" SortExpression="appointmentdate" />
           
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbdoctor.name, tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbappointment.AppointmentTiming, tbappointment.appointmentdate, tbdoctor.qualification, tbtreatment.treatmentdate, tbtreatment.treatmentcost, tbdoctor.previoushospitalname, tbtreatment.treatmentdescription FROM tbappointment INNER JOIN tbdoctor ON tbappointment.Doctorid = tbdoctor.doctorid INNER JOIN tbtreatment ON tbappointment.Appointmentid = tbtreatment.appointmentid WHERE (tbappointment.Userid = @userid)">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="userid" />
            </SelectParameters>
        </asp:SqlDataSource>
        </section>

</asp:Content>

