<%@ Page Title="" Language="C#" MasterPageFile="~/Hospitalpannel/hospitalpannel.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Hospitalpannel_Changepassword" %>
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
 
              <div class="form-group">
                <label for="exampleInputNumber1">Old password</label>
                  <asp:TextBox runat="server" class="form-control" id="oldpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Old password is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="oldpassword"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">New password</label>
              <%--  <input type="email" class="form-control" id="newpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="newpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="New password is required" ForeColor="Red" validationGroup="news" ControlToValidate="newpassword"></asp:RequiredFieldValidator>
              </div>
              
              <div class="form-group">
                <label for="exampleInputMessage">Confirm password</label>
                <%--<input type="text" class="form-control" id="confirmpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="confirmpassword" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" text="Confirm password is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="confirmpassword"></asp:RequiredFieldValidator>
              </div>      
            <%--   <button type="submit" class="">Send</button>--%>
              
              <asp:Button runat="server" class="" ID="button1" Text="Change" OnClick="button1_Click" ValidationGroup="news" />
                  <asp:Button runat="server" class="" ID="button2" Text="Remove" OnClick="button2_Click" ValidationGroup="news" />
                  </div>
           
            </div>
              
          <%--  </form>--%>
         
        
        <%--<div class="col-md-7">
          <div class="detail-box">
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or 
            </p>
          </div>
        </div>--%>
                    
            
      </div>
         <div class="col-lg-6">
<img src="../adminpannel/images%20of%20doctor/1667497039558.jpg"  height="90%" width="100%" style="text-align:right" /></div>
        </div>
         </section>
</asp:Content>


