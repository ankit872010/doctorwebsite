<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Doctorpannel_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
        My Profile
          </h2>
        </div>
      </div>

    </div>
    <div class="container layout_padding2">
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
              <%--<div class="form-group">
                <label for="exampleInputName1">Password</label>
               <input type="text" class="form-control"  id="password"/>
                  <asp:TextBox runat="server" class="form-control"  id="password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Password is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="password"></asp:RequiredFieldValidator>
              </div>--%>
              <div class="form-group">
                <label for="exampleInputNumber1">Name</label>
                <%--<input type="text" class="form-control" id="exampleInputNumber1">--%>
                  <asp:TextBox runat="server" class="form-control" id="name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Name is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="name"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Address</label>
               <%-- <input type="text" class="form-control" id="Text1">--%>
                     <asp:TextBox runat="server" class="form-control" id="address"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Address is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="address"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">City</label>
              <%--  <input type="text" class="form-control" id="Text2">--%>
                     <asp:TextBox runat="server"  class="form-control" id="city"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="City is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="city"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Phone </label>
           <%--     <input type="text" class="form-control" id="Text3">--%>
                     <asp:TextBox runat="server" class="form-control" id="Phone"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="Phone is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="Phone"></asp:RequiredFieldValidator> 
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Qualification</label>
                <%--<input type="text" class="form-control" id="Text4">--%>
                     <asp:TextBox runat="server" class="form-control" id="qualification"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="Qualification is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="qualification"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Experience</label>
                <%--<input type="text" class="form-control" id="Text5">--%>
                     <asp:TextBox runat="server" class="form-control" id="experience"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="Experience is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="experience"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Specialization</label>
           <%--     <input type="text" class="form-control" id="Text6">--%>
                     <asp:TextBox runat="server" class="form-control" id="specialization"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Text="Specialization is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="specialization"></asp:RequiredFieldValidator>
                     </div>
              <div class="form-group">
                <label for="exampleInputEmail1"> Hospital Name </label>
                <%--<input type="email" class="form-control" id="exampleInputEmail1">--%>
             <%--     <asp:TextBox runat="server"  class="form-control" id="hospitalid"></asp:TextBox>--%>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" DataSourceID="hospitalSqlDataSource1" DataTextField="name" DataValueField="hospitalid"></asp:DropDownList>
                  <asp:SqlDataSource ID="hospitalSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT [hospitalid], [name] FROM [tbhospital]"></asp:SqlDataSource>
                  <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Text="Hospitalid is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="hospitalid"></asp:RequiredFieldValidator>--%>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Previous Hospital Name</label>
            <%--    <input type="text" class="form-control" id="Text7">--%>
                     <asp:TextBox runat="server" class="form-control" id="previoushospitalname"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Text="Previous Hospital is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="previoushospitalname"></asp:RequiredFieldValidator>
              </div>
                 <div class="form-group">
                <label for="exampleInputNumber1">Email</label>
                <%--<input type="text" class="form-control" id="Text8">--%>
                     <asp:TextBox runat="server" class="form-control" id="email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RegularExpressionValidator11" runat="server" Text="Email is required" ForeColor="Red" ValidationGroup="doctorregistration" ControlToValidate="email"></asp:RequiredFieldValidator>
              </div>
             
            <%--  <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" Class="" ID="button" Text="Update" ValidationGroup="doctorregistration" OnClick="button_Click" />
            <%--<asp:Button runat="server" ID="restbutton" Text="Reset" OnClick="restbutton_Click" />--%>

          </div>
            
            </div>
         <div class="col-lg-6">
      <img src="../adminpannel/images%20of%20doctor/1667497039549.jpg" height="90%" width="100%" style="text-align:right" /></div>
               


       <%-- </div>
        <div class="col-md-4">
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
      
       
     </section>


</asp:Content>

