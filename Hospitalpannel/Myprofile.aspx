<%@ Page Title="" Language="C#" MasterPageFile="~/Hospitalpannel/hospitalpannel.master" AutoEventWireup="true" CodeFile="Myprofile.aspx.cs" Inherits="Hospitalpannel_Myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2 style="text-align:center;">
           Hospital Registration
          </h2>
        </div>
      </div>
    </div>
    <div class="container layout_padding2">       
                <div class="row align-items-right">
        <div class="col-md-6">
          <div class="form_contaier">
     <%--       <form>--%>
              <div class="form-group">
                <label for="exampleInputName1">Name</label>
         <%--       <input type="text" class="form-control" id=name">--%>
                  <asp:TextBox runat="server" class="form-control" id="name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Name is required" ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="name"></asp:RequiredFieldValidator>
                   </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Address</label>
             <%--   <input type="text" class="form-control" id="password">--%>
                  <asp:TextBox runat="server" class="form-control" id="address"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Address is required" ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="address"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Phone No.</label>
              <%--  <input type="email" class="form-control" id="address">--%>
                  <asp:TextBox runat="server"  class="form-control" id="phone"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Phone no. is required " ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="phone"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputNumber1">Email</label>
              <%--  <input type="text" class="form-control" id="city">--%>
                    <asp:TextBox runat="server"  class="form-control" id="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Email is required " ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="email"></asp:RequiredFieldValidator>
              </div>
              
                <div class="form-group">
                <label for="exampleInputNumber1">Website</label>
               <%-- <input type="text" class="form-control" id="phone">--%>
                    <asp:TextBox runat="server"  class="form-control" id="website"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Website is required " ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="website"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputNumber1">Password</label>
            <%--    <input type="text" class="form-control" id="email">--%>
                    <asp:TextBox runat="server" class="form-control" id="password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Password is required " ForeColor="Red" ValidationGroup="hospitalregistration" ControlToValidate="password"></asp:RequiredFieldValidator>
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
               <asp:Button runat="server" Class="" ID="button1" Text="Update" validationgroup="hospitalregistration" OnClick="button1_Click" />
           
            </div>
                   
          <div class="col-lg-">

                <img src="../adminpannel/images%20of%20doctor/1667494354468.jpg"  height="90%" width="100%" style="text-align:right" /></div>

    
             
        </div>
       
    </div>
         
          <%--  </form>--%>
      
        
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbdoctorConnectionString %>" SelectCommand="SELECT [name], [address], [phone], [email], [website], [statusfield] FROM [tbhospital]"></asp:SqlDataSource>
      </div>
    
  </section>
</asp:Content>
