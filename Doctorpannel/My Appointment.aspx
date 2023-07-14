<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="My Appointment.aspx.cs" Inherits="Doctorpannel_My_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <section class="contact_section" >
    <div class="container" >
      <div class="row" >
        
          <h2 style=" font-size:35px; text-align:center; margin-left:40%; line-height:3; important! " >
            APPOINTMENTS
          </h2>
        </div>
     
    </div>
               
                 

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Appointmentid" DataSourceID="MyappointmentSqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>

        <asp:CommandField ShowSelectButton="True" SelectText="Edit"  HeaderText="Click To Edit"/>

        <asp:BoundField DataField="Appointmentid" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
        <%-- <asp:BoundField DataField="Name" HeaderText=" User Name" SortExpression="name" />--%>
         <asp:BoundField DataField="AppointmentTiming" HeaderText="Appointment Timing" SortExpression="AppointmentTiming" />
        <asp:BoundField DataField="Appointmentdate" HeaderText="Appointment Date" SortExpression="Appointmentdate" />
       
        <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
          <asp:BoundField DataField="Symptomes" HeaderText="Symptoms" SortExpression="Symptomes" /> 
        <asp:BoundField DataField="Appointmentstatus" HeaderText="Appointment Status" SortExpression="Appointmentstatus" />
        <%-- <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />--%>
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
<asp:SqlDataSource ID="MyappointmentSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbappointment.Appointmentid,tbappointment.AppointmentTiming, tbappointment.Appointmentdate, tbappointment.Appointmentstatus, tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbuser.name FROM tbappointment INNER JOIN tbuser ON tbappointment.Userid = tbuser.userid Where doctorid=@doctorid">
    <SelectParameters>
        <asp:SessionParameter Name="doctorid" SessionField="doctorid" />
    </SelectParameters>
             </asp:SqlDataSource>
    <br />

    <br />

      <div class="container layout_padding2">
      <div class="row">
             
        <div class="col-md-7">
          <div class="form_contaier">
             
    <%--  <div class="form-group">
                <label for="exampleInputEmail1">Name</label>
                <input type="email" class="form-control" id="appointment date">--%>
                 <%--  <asp:TextBox runat="server" class="form-control" id="name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="Name is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="name"></asp:RequiredFieldValidator>
              </div>--%>
     <div class="form-group">
                <label for="exampleInputEmail1">Appointment Timing</label>
               <%-- < type="email" class="form-control" id="appointment date">--%>
                   <asp:TextBox runat="server" class="form-control" id="Timing"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="Appointment Timing is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="Timing"></asp:RequiredFieldValidator>
              </div>
    <div class="form-group">
                <label for="exampleInputEmail1">Appointment Date</label>
               <%-- <input type="email" class="form-control" id="appointment date">--%>
                   <asp:TextBox runat="server" class="form-control" id="appointmentdate" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="Appointment date is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="appointmentdate"></asp:RequiredFieldValidator>
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
      <div class="form-group">
                <label for="exampleInputEmail1">Appointment status</label>
            <%--   <input type="email" class="form-control" id="appointment date">---%>
                  <%--<asp:TextBox runat="server" class="form-control" id="appointmentstatus"></asp:TextBox>--%>

                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="Appointment date is required" ForeColor="Red" ValidationGroup="appointment" ControlToValidate="appointmentstatus"></asp:RequiredFieldValidator>--%>

          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
              
              <asp:ListItem>Accepted</asp:ListItem>
              <asp:ListItem>Rejected</asp:ListItem>
                </asp:DropDownList>
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
  
                  <asp:Button runat="server" ID="updatebutton" Text="Update" ValidationGroup="appointment" OnClick="updatebutton_Click"/>
                  <asp:Button runat="server" ID="prescribeButton1" Text="Add Presecriptioin"  OnClick="prescribeButton1_Click" />
                            <%--  </form>--%>
                   &nbsp;&nbsp;&nbsp;
             
          <%--  </form>--%>
          </div>
             
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
    </section>
      
        
       
    
     
</asp:Content>

