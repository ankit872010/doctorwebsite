<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="treatment.aspx.cs" Inherits="Doctorpannel_treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Treatment
          </h2>
        </div>
      </div>
    </div>
    <div class="container layout_padding2">
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
          <%--  <form>--%>
              <div class="form-group" id="textbox1">
                <label for="exampleInputName1">Appointmentid</label>
                <%--<input type="text" class="form-control" id="Appointmentid">--%>
                  <asp:TextBox runat="server" class="form-control" id="Appointmentid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Appointmentid is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Appointmentid"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group" id="textbox2">
                <label for="exampleInputNumber1">Treatmentdescription</label>
                <%--<input type="text" class="form-control" id="Treatmentdescription">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentdescription"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Treatmentdescription is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentdescription"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group" id="textbox3">
                <label for="exampleInputEmail1">Treatmentdate </label>
                <%--<input type="email" class="form-control" id="Treatmentdate ">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentdate" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Text="Treatmentdate is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentdate" ></asp:RequiredFieldValidator>
              </div>
               <div class="form-group" id="textbox4">
                <label for="exampleInputNumber1">Treatmentcost</label>
                <%--<input type="text" class="form-control" id="Treatmentcost">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentcost"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Treatmentcost is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentcost"></asp:RequiredFieldValidator>
              </div>
        

             <%-- <div class="form-group ">
                <label for="inputState">Select medicine</label>
                <select id="inputState" class="form-control">
                  <option selected>Medicine 1</option>
                  <option selected>Medicine 2</option>
                  <option selected>Medicine 3</option>
                </select>
              </div>--%>
              <%--<div class="form-group">
                <label for="exampleInputMessage">Message</label>
                <input type="text" class="form-control" id="exampleInputMessage">
              </div>--%>
             <%-- <button type="submit" class="">Send</button>--%>
            <asp:Button runat="server" Class="" ID="button1" Text="submit" ValidationGroup="treatment"  OnClick="button1_Click"  />
           <%-- </form>--%>
          &nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Reset" />
          </div>
        </div>
      <%-- <div class="col-md-7">
          <div class="detail-box">
            <h3>
              Get Now Medicines
            </h3>
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or randomised words which don't look even slightly believable.
            </p>
          </div>
        </div>--%>
      </div>
    </div>
  </section>
</asp:Content>

