<%@ Page Title="" Language="C#" MasterPageFile="~/adminpannel/adminmaster.master" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="adminpannel_comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="img-box">
        <img src="images/about-medicine.png" alt="" >
      </div>
      <div class="detail-box">

      <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
         Comments Report
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
                <label for="exampleInputName1">From Date</label>
               <%-- <input type="text" class="form-control" id="exampleInputName1">--%>
                  <asp:TextBox runat="server" class="form-control" id="Textbox1" TextMode="Date"></asp:TextBox>
                 
                  
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="Enter Date " ForeColor="Red" ValidationGroup="treatment" ControlToValidate="Textbox1"></asp:RequiredFieldValidator>

              </div>
              </div>
            </div>
            <div class="col-md-5">
                 <div class="form_contaier">

              <div class="form-group">
                <label for="exampleInputEmail1">To Date </label>
              <%--  <input type="email" class="form-control" id="exampleInputEmail1">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Textbox2" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Enter Date" ForeColor="Red" validationGroup="treatment" ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
              </div>
                     
                 </div>
                
                </div>
                    <div class="col-md-2 py-4">
             <%-- <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server" class="" ID="button" Text="Show" ValidationGroup="treatment" onclick="button_Click"/>
         
      <%--    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Reset" />--%>
              <%--  </form>--%>
          </div>
        </div>
          </div>
          <div class="form_contaier">

        <div class="col-md-12">
        <%--<div class="detail-box">
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or 
            </p>--%>
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="newscomment" DataSourceID="commentSqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="newscomment" HeaderText="News Comment" InsertVisible="False" ReadOnly="True" SortExpression="newscomment" />
                    <asp:BoundField DataField="newsid" HeaderText="News Id" SortExpression="newsid" />
                    <asp:BoundField DataField="doctorid" HeaderText="Doctor Id" SortExpression="doctorid" />
                    <asp:BoundField DataField="commentdescription" HeaderText="Comment Description" SortExpression="commentdescription" />
                    <asp:BoundField DataField="datecomment" HeaderText="Date Comment" SortExpression="datecomment" />
                    <asp:BoundField DataField="statuscomment" HeaderText="Status Comment" SortExpression="statuscomment" />
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
            <asp:SqlDataSource ID="commentSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT * FROM [tbnewscomment] WHERE (([datecomment] &gt;= @datecomment) AND ([datecomment] &lt;= @datecomment2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Textbox1" Name="datecomment" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox2" Name="datecomment2" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </div>
           
          <%--  </div>--%>
          </div>
           </div>
  </section>
</asp:Content>

