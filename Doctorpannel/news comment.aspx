<%@ Page Title="" Language="C#" MasterPageFile="~/Doctorpannel/Doctor.master" AutoEventWireup="true" CodeFile="news comment.aspx.cs" Inherits="Doctorpannel_news_comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
           NEWS COMMENT
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
                <label for="exampleInputName1">Newsid</label>
               <%-- <input type="text" class="form-control" id="email">--%>
                  <asp:TextBox runat="server" class="form-control" id="newsid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" text="News Id is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="newsid"></asp:RequiredFieldValidator>

              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Doctor Id</label>
                  <asp:TextBox runat="server" class="form-control" id="doctorid"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" text="Doctor Id is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="doctorid"></asp:RequiredFieldValidator>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Comment Description</label>
              <%--  <input type="email" class="form-control" id="newpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="Commentdescription"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" text="Comment Description  is required" ForeColor="Red" validationGroup="news" ControlToValidate="Commentdescription"></asp:RequiredFieldValidator>
              </div>

              
              <div class="form-group">
                <label for="exampleInputMessage">Date of Comments</label>
                <%--<input type="text" class="form-control" id="confirmpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="datecomment"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" text="Date of  Comment is required" ForeColor="Red" ValidationGroup="news" ControlToValidate="datecomment"></asp:RequiredFieldValidator>
              </div>
             <div class="form-group">
                <label for="exampleInputEmail1">Status Comment</label>
              <%--  <input type="email" class="form-control" id="newpassword">--%>
                  <asp:TextBox runat="server"  class="form-control" id="statuscomment"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" text="Status Comment is required" ForeColor="Red" validationGroup="news" ControlToValidate="statuscomment"></asp:RequiredFieldValidator>
              </div>

              
            <%--   <button type="submit" class="">Send</button>--%>
              <asp:Button runat="server"  class="" ID="button1" Text="Submit"  OnClick="button1_Click" ValidationGroup="news" />
              <asp:Button runat="server" Class="" ID="button2" Text="Reset" ValidationGroup="news" OnClick="button2_Click" />
              
            
          </div>
          <%--  </form>--%>
         
        </div>
       <div class="col-md-7">
      
<asp:SqlDataSource ID="tbcommentSqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doctorConnection %>" SelectCommand="SELECT tbnewscomment.newcomment, tbnewscomment.commentdescription, tbnewscomment.datecomment, tbnewscomment.statuscomment, tbnews.newsdescription, tbnews.newsdate, tbnews.newstitle, tbnewscomment.newsid FROM tbnewscomment INNER JOIN tbnews ON tbnewscomment.newsid = tbnews.newsid"></asp:SqlDataSource>


          </div>
        </div>
      </div>

  </section>
    
</asp:Content>

