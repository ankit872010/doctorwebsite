<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="change password.aspx.cs" Inherits="Doctorpannel_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2 style="text-align:center;">
           Change Password
          </h2>
        </div>
      </div>
    </div>
    <div class="container layout_padding2">       
                <div class="row align-items-right">
        <div class="col-md-6">
          <div class="form_contaier">
           <%-- <form>--%>
              <div class="form-group">
                <label for="exampleInputName1">Email Id</label>
               <%-- <input type="text" class="form-control" id="email">--%>
                  <asp:TextBox runat="server" class="form-control" id="email"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Email Id is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="email"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Old password</label>
                   <%--  <input type="text" class="form-control" id="Oldpassword">--%>
                  <asp:TextBox runat="server" class="form-control" id="Oldpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Old password is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="Oldpassword"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">New password</label>
              <%--  <input type="text" class="form-control" id="Newpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Newpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="New password is required" ForeColor="Red" validationGroup="news" ControlToValidate="Newpassword"></asp:RequiredFieldValidator>
              </div>
              
              <div class="form-group">
                <label for="exampleInputMessage">Confirm password</label>
                <%--<input type="text" class="form-control" id="confirmpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="confirmpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" text="Confirm password is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="confirmpassword"></asp:RequiredFieldValidator>
              </div>
         <%--   <button type="submit" class="">Send</button>--%>
              
              <asp:Button runat="server" ID="button1" class="" Text="Change" OnClick="button1_Click" ValidationGroup="news" />
                 <asp:Button runat="server" ID="button2" class="" Text="Remove" OnClick="button2_Click1" ValidationGroup="news" />
           <%-- </form>--%>
          </div>
          <%--  </form>--%>
         
               
        
        </div>
                       <div class="col-lg-6">

              
                           <img src="../adminpannel/images%20of%20doctor/1667497039558.jpg"  height="90%" width="100%" style="text-align:right" /></div>
       <%-- <div class="col-md-7">
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

