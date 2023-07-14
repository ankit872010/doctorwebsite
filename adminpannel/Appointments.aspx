<%@ Page Title="" Language="C#" MasterPageFile="~/adminpannel/adminmaster.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="adminpannel_Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Appointments
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
                <label for="exampleInputName1">AppointmentDate</label>
               <%-- <input type="text" class="form-control" id="exampleInputName1">--%>
                  <asp:TextBox runat="server" class="form-control" id="AppointmentDate"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Appointment Date is required " ForeColor="Red" ValidationGroup="appointment" ControlToValidate="AppointmentDate"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Userid</label>
                  <asp:TextBox runat="server" class="form-control" id="Userid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Userid is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Userid"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Doctorid </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Doctorid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Doctorid  is required" ForeColor="Red" validationGroup="appointment" ControlToValidate="Doctorid"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Appointments status </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Appointmentsstatus"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" text="Appointments status is required" ForeColor="Red" validationGroup="appointment" ControlToValidate="Appointmentsstatus"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Patient name </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Patientname"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" text="Patientname is required" ForeColor="Red" validationGroup="appointment" ControlToValidate="Patientname"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Gender </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Gender"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" text="Gender is required" ForeColor="Red" validationGroup="appointment" ControlToValidate="Gender"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Age </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Age"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" text="Age is required" ForeColor="Red" validationGroup="appointment" ControlToValidate="Age"></asp:RequiredFieldValidator>
              </div>
              
              <div class="form-group">
                <label for="exampleInputMessage">Symptomes</label>
                <%--<input type="text" class="form-control" id="exampleInputMessage">--%>
                  <asp:TextBox runat="server"  class="form-control" id="symptomes"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" text="Symptomes is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="symptomes"></asp:RequiredFieldValidator>
              </div>
             <%-- <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" class="" ID="button1" Text="Book appointment" ValidationGroup="appointment" onclick="button1_Click" />
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Reset" />
              <%--  </form>--%>
          </div>
        </div>
        <%--<div class="col-md-7">
          <div class="detail-box">
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or 
            </p>
          </div>
        </div>--%>
      </div>
        </div>
  </section>
</asp:Content>

