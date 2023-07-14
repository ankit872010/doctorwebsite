<%@ Page Title="" Language="C#" MasterPageFile="~/userpannel/User.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="userpannel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
        My Home
          </h2>
        </div>
      </div>

    </div>
    <div class="container layout_padding2">
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
     <%--       <form>--%>
              <div class="form-group">
                <label for="exampleInputName1">Name</label>
         <%--       <input type="text" class="form-control" id=name">--%>
                  <asp:TextBox runat="server" class="form-control" id="name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Name is required" ForeColor="Red" ValidationGroup="registration" ControlToValidate="name"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Password</label>
             <%--   <input type="text" class="form-control" id="password">--%>
                  <asp:TextBox runat="server" class="form-control" id="password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Password is required" ForeColor="Red" ValidationGroup="registration" ControlToValidate="password"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Address</label>
              <%--  <input type="email" class="form-control" id="address">--%>
                  <asp:TextBox runat="server"  class="form-control" id="address"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Address is required " ForeColor="Red" ValidationGroup="registration" ControlToValidate="address"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputNumber1">City</label>
              <%--  <input type="text" class="form-control" id="city">--%>
                    <asp:TextBox runat="server"  class="form-control" id="city"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="City is required " ForeColor="Red" ValidationGroup="registration" ControlToValidate="city"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputNumber1">Phone</label>
               <%-- <input type="text" class="form-control" id="phone">--%>
                    <asp:TextBox runat="server"  class="form-control" id="phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Phone is required " ForeColor="Red" ValidationGroup="registration" ControlToValidate="phone"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputNumber1">Email</label>
            <%--    <input type="text" class="form-control" id="email">--%>
                    <asp:TextBox runat="server" class="form-control" id="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Email is required " ForeColor="Red" ValidationGroup="registration" ControlToValidate="email"></asp:RequiredFieldValidator>
              </div>
            <%--  <div class="form-group ">
                <label for="inputState">Select medicine</label>
                <select id="inputState" class="form-control">
                  <option selected>Medicine 1</option>
                  <option selected>Medicine 2</option>
                  <option selected>Medicine 3</option>
                </select>
              </div>--%>
             <%-- <div class="form-group">
                <label for="exampleInputMessage">Message</label>
                <input type="text" class="form-control" id="exampleInputMessage">
              </div>--%>
             <%-- <button type="submit" class="">Send</button>--%>
               <asp:Button runat="server" Class="" ID="button" Text="Update" ValidationGroup="registration" OnClick="button_Click" />
              </div>
          <%--  </form>--%>
      
        </div>
          <div class="col-lg-6">

              
              <img src="../adminpannel/images%20of%20doctor/1667488405052.jpg"  height="90%" width="100%" style="text-align:right" /></div>
             
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

