<%@ Page Title="" Language="C#" MasterPageFile="~/adminpannel/adminmaster.master" AutoEventWireup="true" CodeFile="change password.aspx.cs" Inherits="adminpannel_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Change admin Password
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
                <label for="exampleInputName1">Email</label>
               <%-- <input type="text" class="form-control" id="email">--%>
                  <asp:TextBox runat="server" class="form-control" id="email" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Username is required" ForeColor="Red" ValidationGroup="change password" ControlToValidate="email"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Old password</label>
                   <%--  <input type="text" class="form-control" id="Oldpassword">--%>
                  <asp:TextBox runat="server" class="form-control" id="Oldpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Old password is required" ForeColor="Red" ValidationGroup="change password" ControlToValidate="Oldpassword"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">New password</label>
              <%--  <input type="text" class="form-control" id="Newpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Newpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="New password is required" ForeColor="Red" validationGroup="change password" ControlToValidate="Newpassword"></asp:RequiredFieldValidator>
              </div>
              
              <div class="form-group">
                <label for="exampleInputMessage">Confirm password</label>
                <%--<input type="text" class="form-control" id="confirmpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="confirmpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" text="Confirm password is required" ForeColor="Red" ValidationGroup="change password" ControlToValidate="confirmpassword"></asp:RequiredFieldValidator>
              </div>
         <%--   <button type="submit" class="">Send</button>--%>
              
              <asp:Button runat="server" ID="button1" class="" Text="Change" OnClick="button1_Click"  ValidationGroup="change password" />
                 <asp:Button runat="server" ID="button" class="" Text="Remove" OnClick="button_Click" />
           <%-- </form>--%>
          </div>
          <%--  </form>--%>
         
               
        
        </div>
          
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

