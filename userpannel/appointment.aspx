<%@ Page Title="" Language="C#" MasterPageFile="~/userpannel/User.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="userpannel_appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2 style="text-align:center;">
           My Appointment
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
               <%-- <label for="exampleInputName1">Date</label>
                <input type="text" class="form-control" id="date">
                  <asp:TextBox runat="server"  class="form-control" id="date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Date is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="date"></asp:RequiredFieldValidator>
              </div>--%>
              <%--<div class="form-group">
                <label for="exampleInputNumber1">User Id</label>
               <input type="text" class="form-control" id="Userid">--%>
                  <%--<asp:TextBox runat="server" class="form-control" id="Userid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="User Id is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Userid"></asp:RequiredFieldValidator>
              </div>--%>

              <div class="form-group">
                <label for="exampleInputEmail1">Select Doctor</label>
                <%--<input type="email" class="form-control" id="Doctorid">--%>
                 <%--<asp:TextBox runat="server" class="form-control" id="Doctorid"> </asp:TextBox>--%>
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Doctorid"></asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT [doctorid], [name] FROM [tbdoctor]"></asp:SqlDataSource>
                 <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Doctor Id is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Doctorid"></asp:RequiredFieldValidator>--%>
              </div>
                   <div class="form-group">
                <label for="exampleInputEmail1">Appointment Timing</label>
               <%-- <input type="email" class="form-control" id="appointment date">--%>
                   <asp:TextBox runat="server" class="form-control" id="Timing"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Appointment Timing is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Timing"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Appointment Date</label>
               <%-- <input type="email" class="form-control" id="appointment date">--%>
                   <asp:TextBox runat="server" class="form-control" id="appointmentdate" TextMode="Date"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Appointment date is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="appointmentdate"></asp:RequiredFieldValidator>



                    <%--<asp:Calendar ID="Calendar1" runat="server" class="form-control"></asp:Calendar>--%>
                      </div>

                <div class="form-group">
                <label for="exampleInputEmail1">Patient Name</label>
              <%--  <input type="email" class="form-control" id="Patient name">--%>
                    <asp:TextBox runat="server" class="form-control" id="Patientname"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Text="Patient name is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Patientname"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Gender</label>
               <%-- <input type="email" class="form-control" id="Gender">--%>
                    <asp:TextBox runat="server" class="form-control" id="Gender"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  Text="Gender is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Gender"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Age</label>
               <%-- <input type="email" class="form-control" id="Age">--%>
                    <asp:TextBox runat="server"  class="form-control" id="Age"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="Age is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Age"></asp:RequiredFieldValidator>
              </div>
                <div class="form-group">
                <label for="exampleInputEmail1">Symptoms</label>
               <%-- <input type="email" class="form-control" id="Symptomes">--%>
                    <asp:TextBox runat="server" class="form-control" id="Symptomes"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Text="Symptoms is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Symptomes"></asp:RequiredFieldValidator>
              </div>
             <%-- <div class="form-group ">
                <label for="inputState">Select medicine</label>
                <select id="inputState" class="form-control">
                  <option selected>Medicine 1</option>
                  <option selected>Medicine 2</option>
                  <option selected>Medicine 3</option>
                </select>
              </div>--%>
          <%--    <div class="form-group">
                <label for="exampleInputMessage">Message</label>
                <input type="text" class="form-control" id="exampleInputMessage">
              </div>--%>
             <%-- <button type="submit" class="">Send</button>--%>
                <asp:Button runat="server" class="" ID="button1" Text="Book Appointment" ValidationGroup="appointment" OnClick="button1_Click" />
                  <asp:Button runat="server" ID="update" Text="Update" ValidationGroup="appointment" OnClick="update_Click" Visible="false" />
                            <%--  </form>--%>
                   &nbsp;&nbsp;&nbsp;
              <asp:Button runat="server" Class="" ID="button2" Text="Reset" ValidationGroup="appointment" OnClick="button2_Click" />
          <%--  </form>--%>
          </div>
            
            
   </div>
           
        <%--<div class="col-md-7">
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
           <div class="col-lg-6">

                <img src="../adminpannel/images%20of%20doctor/1667494354468.jpg"  height="90%" width="100%" style="text-align:right" /></div>

    
             
        
       
    </div>
         
    
     
             
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Appointmentid" DataSourceID="myappointmentSqlDataSource2" GridLines="Vertical" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                 <asp:CommandField ShowSelectButton="True" SelectText="Edit" HeaderText="Click To Edit" />
                <asp:BoundField DataField="Appointmentid" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
                <asp:BoundField DataField="AppointmentTiming" HeaderText="Appointment Timing" SortExpression="AppointmentTiming" />
                <asp:BoundField DataField="appointmentdate" HeaderText="Appointment Date" SortExpression="appointmentdate" />
                <%--<asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />--%>
                <asp:BoundField DataField="Doctorid" HeaderText="Doctor Id" SortExpression="Doctorid" />
                <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Symptomes" HeaderText="Symptoms" SortExpression="Symptomes" />
                <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointment Status" SortExpression="Appointmentstatus" />
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
        <asp:SqlDataSource ID="myappointmentSqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT * FROM [tbappointment] where userid=@userid">
            <SelectParameters>
                <asp:SessionParameter Name="userid" SessionField="userid" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    <b> <center>Appointment will be accepted after payment</center></b><br />
  </section>

</asp:Content>

