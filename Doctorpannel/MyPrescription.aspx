<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="MyPrescription.aspx.cs" Inherits="Doctorpannel_MyPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact_section" >
    <div class="container" >
      <div class="row" >
        
          <h2 style=" font-size:35px; text-align:center; margin-left:40%; line-height:3; important! " >
           MY  PRESCRIPTIONS
          </h2>
        </div>
     
    </div>
               
                 </section>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="treatmentid,Appointmentid" DataSourceID="MyprescriptionSqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Edit" HeaderText="ClickToEdit"  />
            <asp:BoundField DataField="Appointmentid" HeaderText="Appointment Id" InsertVisible="False" ReadOnly="True" SortExpression="Appointmentid" />
            <asp:BoundField DataField="Patientname" HeaderText="Patient Name" SortExpression="Patientname" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Symptomes" HeaderText="Symptomes" SortExpression="Symptomes" />
            <asp:BoundField DataField="appointmentdate" HeaderText="Appointmentdate" SortExpression="appointmentdate" />
            <asp:BoundField DataField="AppointmentTiming" HeaderText="AppointmentTiming" SortExpression="AppointmentTiming" />
            <asp:BoundField DataField="treatmentid" HeaderText="Treatment Id" InsertVisible="False" ReadOnly="True" SortExpression="treatmentid" />
            <asp:BoundField DataField="treatmentdescription" HeaderText="Treatment Description" SortExpression="treatmentdescription" />
            <asp:BoundField DataField="treatmentdate" HeaderText="Treatment Date" SortExpression="treatmentdate" />
            <asp:BoundField DataField="treatmentcost" HeaderText="Treatment Cost" SortExpression="treatmentcost" />
            
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
    <asp:SqlDataSource ID="MyprescriptionSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbappointment.Patientname, tbappointment.Gender, tbappointment.Age, tbappointment.Symptomes, tbappointment.appointmentdate, tbappointment.AppointmentTiming, tbtreatment.treatmentid, tbtreatment.treatmentdescription, tbtreatment.treatmentdate, tbtreatment.treatmentcost, tbappointment.Appointmentid FROM tbappointment INNER JOIN tbtreatment ON tbappointment.Appointmentid = tbtreatment.appointmentid WHERE (tbappointment.Doctorid = @doctorid)">
        <SelectParameters>
            <asp:SessionParameter Name="doctorid" SessionField="doctorid" />
        </SelectParameters>
    </asp:SqlDataSource>


   
    
   


   
    
   
    <br />
     <div class="container layout_padding2">
      <div class="row">
             
        <div class="col-md-7">
          <div class="form_contaier">
   <div class="form-group" id="textbox1">
                <label for="exampleInputName1">Appointmentid</label>
               <%-- <input type="text" class="form-control" id="Appointmentid">--%>
                <asp:TextBox runat="server" class="form-control" id="Appointmentid" ReadOnly="true"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Appointmentid is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Appointmentid"></asp:RequiredFieldValidator>
              </div>
              <div class="form-group" id="textbox2">
                <label for="exampleInputNumber1">Treatment Description</label>
                <%--<input type="text" class="form-control" id="Treatmentdescription">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentdescription"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Treatmentdescription is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentdescription"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group" id="textbox3">
                <label for="exampleInputEmail1">Treatment Date </label>
                <%--<input type="email" class="form-control" id="Treatmentdate ">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentdate" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Text="Treatmentdate is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentdate" ></asp:RequiredFieldValidator>
              </div>
               <div class="form-group" id="textbox4">
                <label for="exampleInputNumber1">Treatment Cost</label>
                <%--<input type="text" class="form-control" id="Treatmentcost">--%>
                  <asp:TextBox runat="server" class="form-control" id="Treatmentcost"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Treatmentcost is required" ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Treatmentcost"></asp:RequiredFieldValidator>
              </div>
        <asp:Button runat="server" Class="" ID="update" Text="Update" ValidationGroup="treatment"  OnClick="update_Click"  />
              <asp:Button runat="server" Class="" ID="Save" Text="Save" ValidationGroup="treatment"  OnClick="Save_Click" />
              <%-- <asp:Button runat="server" Class="" ID="save" Text="Save" ValidationGroup="treatment"  OnClick="save_Click" />--%>
           <%-- </form>--%>
              </div>
            </div>
          </div>
         </div>
   
    </div>
</asp:Content>

