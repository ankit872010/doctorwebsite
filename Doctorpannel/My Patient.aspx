<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="My Patient.aspx.cs" Inherits="Doctorpannel_My_Patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
         My Patients
          </h2>
        </div>
      </div>
    </div>
    <div class="container layout_padding2">
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
           <%-- <form>--%>
              <div class="form-group">
                <label for="exampleInputName1">From Date</label>
               <%-- <input type="text" class="form-control" id="exampleInputName1">--%>
                  <asp:TextBox runat="server" class="form-control" id="AppointmentDate" TextMode="Date"></asp:TextBox>
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Enter Date " ForeColor="Red" ValidationGroup="treatment" ControlToValidate="AppointmentDate"></asp:RequiredFieldValidator>

              </div>
              </div>
            </div>
             <div class="col-md-5">
          <div class="form_contaier">

              <div class="form-group">
                <label for="exampleInputEmail1">To Date </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Doctorid" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Enter Date" ForeColor="Red" validationGroup="treatment" ControlToValidate="Doctorid"></asp:RequiredFieldValidator>
              </div>
              </div>
                 </div>
                 <div class="col-md-2 py-4">
          <div class="form_contaier">

              <div class="form-group">
             <%-- <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" class="" ID="show" Text="Show" ValidationGroup="treatment" onclick="show_Click" />
         
      <%--    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Reset" />--%>
              <%--  </form>--%>
          </div>
              </div>
        </div>
          </div>
        </div>
        </section>
         

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="doctorid" DataSourceID="MyPatientSqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
           
            <asp:BoundField DataField="doctorid" HeaderText="doctorid" InsertVisible="False" ReadOnly="True" SortExpression="doctorid" />
            <asp:BoundField DataField="Appointmentdate" HeaderText="Appointment Date" SortExpression="Appointmentdate" />
            <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointment Status" SortExpression="Appointmentstatus" />
            <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Symptomes" HeaderText="Symptoms" SortExpression="Symptomes" />
            <asp:BoundField DataField="treatmentdescription" HeaderText="Treatment Description" SortExpression="treatmentdescription" />
            <asp:BoundField DataField="treatmentdate" HeaderText="Treatment Date" SortExpression="treatmentdate" />
            <asp:BoundField DataField="treatmentcost" HeaderText="Treatment Cost" SortExpression="treatmentcost" />
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
    <asp:SqlDataSource ID="MyPatientSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbdoctor.doctorid, tbappointment.Appointmentdate, tbappointment.Appointmentstatus, tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbtreatment.treatmentdescription, tbtreatment.treatmentdate, tbtreatment.treatmentcost FROM tbdoctor INNER JOIN tbappointment ON tbdoctor.doctorid = tbappointment.Doctorid INNER JOIN tbtreatment ON tbappointment.Appointmentid = tbtreatment.appointmentid WHERE (tbdoctor.doctorid = @doctorid)and (([appointmentdate] &gt;= @date) AND ([appointmentdate] &lt;= @date2))">
        <SelectParameters>
            <asp:SessionParameter Name="doctorid" SessionField="doctorid" Type="Int64" />
            <asp:ControlParameter ControlID="AppointmentDate" Name="date" PropertyName="Text" />
            <asp:ControlParameter ControlID="Doctorid" Name="date2" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

