<%@ Page Title="" Language="C#" MasterPageFile="~/adminpannel/adminmaster.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="adminpannel_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
        Appointments Report
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
                  <asp:TextBox runat="server" class="form-control" id="Textbox5" TextMode="Date"></asp:TextBox>
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Enter Date " ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Textbox5"></asp:RequiredFieldValidator>

              </div>
               </div>
              </div>
            
            <div class="col-md-5">
                 <div class="form_contaier">
              <div class="form-group">
                <label for="exampleInputEmail1">To Date </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Textbox6" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Enter Date" ForeColor="Red" validationGroup="treatment" ControlToValidate="Textbox6"></asp:RequiredFieldValidator>
              </div>
           </div>
              </div>
                    <div class="col-md-2 py-4">
          <div class="form_contaier">
             <%-- <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" class="" ID="button" Text="Show" ValidationGroup="treatment" onclick="button_Click"/>
         
      <%--    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Reset" />--%>
              <%--  </form>--%>
          </div>
        </div>
        <div class="col-md-7">
        <%--  <div class="detail-box">
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or 
            </p>--%>
          
    <%--</div>--%>
          
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="appointmentid" DataSourceID="appointmentSqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="appointmentid" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="appointmentid" />
                <asp:BoundField DataField="appointmentdate" HeaderText="Appointment Date" SortExpression="appointmentdate" />
                <asp:BoundField DataField="userid" HeaderText="User Id" SortExpression="userid" />
                <asp:BoundField DataField="doctorid" HeaderText="Doctor Id" SortExpression="doctorid" />
                <asp:BoundField DataField="appointmentstatus" HeaderText="Appointment Status" SortExpression="appointmentstatus" />
                <asp:BoundField DataField="patientname" HeaderText="Patient Name" SortExpression="patientname" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="symptomes" HeaderText="Symptomes" SortExpression="symptomes" />
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
        <asp:SqlDataSource ID="appointmentSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT * FROM [tbappointment] WHERE (([appointmentdate] &gt;= @appointmentdate) AND ([appointmentdate] &lt;= @appointmentdate2))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Textbox5" DbType="Date" Name="appointmentdate" PropertyName="Text" />
                <asp:ControlParameter ControlID="Textbox6" DbType="Date" Name="appointmentdate2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
          
  </section>
</asp:Content>

