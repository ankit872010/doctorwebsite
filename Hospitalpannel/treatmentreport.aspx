<%@ Page Title="" Language="C#" MasterPageFile="~/Hospitalpannel/hospitalpannel.master" AutoEventWireup="true" CodeFile="treatmentreport.aspx.cs" Inherits="Hospitalpannel_treatmentreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Treatments Reports
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
           <div class="form-group">
                <label for="exampleInputEmail1">Select Doctor</label>
                <%--<input type="email" class="form-control" id="Doctorid">--%>
                 <%--<asp:TextBox runat="server" class="form-control" id="Doctorid"> </asp:TextBox>--%>
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Doctorid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbappointment.Appointmentid, tbappointment.AppointmentTiming, tbappointment.appointmentdate, tbappointment.Userid, tbappointment.Doctorid, tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbappointment.Appointmentstatus, tbtreatment.treatmentdate, tbtreatment.treatmentcost, tbdoctor.phone, tbdoctor.qualification, tbdoctor.name, tbdoctor.address, tbhospital.name AS Expr1, tbhospital.phone AS Expr2 FROM tbappointment INNER JOIN tbdoctor ON tbappointment.Doctorid = tbdoctor.doctorid INNER JOIN tbhospital ON tbdoctor.hospitalid = tbhospital.hospitalid INNER JOIN tbtreatment ON tbappointment.Appointmentid = tbtreatment.appointmentid WHERE (tbappointment.appointmentdate = @appointmentdate) AND (tbappointment.Doctorid = @Doctorid)">
                      <SelectParameters>
                          <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="appointmentdate" PropertyName="SelectedValue" />
                          <asp:ControlParameter ControlID="DropDownList1" Name="Doctorid" PropertyName="SelectedValue" Type="Int64" />
                      </SelectParameters>
                </asp:SqlDataSource>
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Appointmentid" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="Appointmentid" HeaderText="Appointmentid" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
                         <asp:BoundField DataField="AppointmentTiming" HeaderText="AppointmentTiming" SortExpression="AppointmentTiming" />
                         <asp:BoundField DataField="appointmentdate" HeaderText="appointmentdate" SortExpression="appointmentdate" />
                         <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
                         <asp:BoundField DataField="Doctorid" HeaderText="Doctorid" SortExpression="Doctorid" />
                         <asp:BoundField DataField="Patientname" HeaderText="Patientname" SortExpression="Patientname" />
                         <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                         <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                         <asp:BoundField DataField="Symptomes" HeaderText="Symptomes" SortExpression="Symptomes" />
                         <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointmentstatus" SortExpression="Appointmentstatus" />
                         <asp:BoundField DataField="treatmentdate" HeaderText="treatmentdate" SortExpression="treatmentdate" />
                         <asp:BoundField DataField="treatmentcost" HeaderText="treatmentcost" SortExpression="treatmentcost" />
                         <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                         <asp:BoundField DataField="qualification" HeaderText="qualification" SortExpression="qualification" />
                         <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                         <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                         <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                         <asp:BoundField DataField="Expr2" HeaderText="Expr2" SortExpression="Expr2" />
                     </Columns>
                </asp:GridView>
                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Doctor Id is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Doctorid"></asp:RequiredFieldValidator>--%>
              </div>
        
        
                 <div class="col-md-2 py-4">
          <div class="form_contaier">
             <%-- <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" Class="" ID="button" Text="Show" ValidationGroup="treatment" OnClick="button_Click" />
              </div>
                     </div>
         </section>
    </asp:Content>