﻿<%@ Page Language="C#" Title="Add User" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="AddUser" MasterPageFile="~/Child.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">

    <h2 class="page-header">Add a User</h2>
    

        <div class="row">
            <div class="col-lg-4">
            <div class="form-group">
                <label>Email Address</label>
                <asp:TextBox ID="txt_name" runat="server" class="form-control" required="required" placeholder="Your Email *" value=""></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txt_password" runat="server" placeholder="Your Password *" value="" class="form-control" required="required"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Password</label>
                <asp:TextBox ID="txt_password2" runat="server" placeholder="Please Enter Your Password Again *" value="" class="form-control" required="required"></asp:TextBox>
            </div>
    
        
                
      
                

                <div class="col-lg-3">
                    <div id="btn">
                    <asp:Button ID="btnCreateUser" runat="server" OnClick="btnCreateUser_Click" CssClass="btn btn-primary btn-group-justified" Text="Submit" /><br />
                    </div>
                </div>
                <div class="col-lg-3">
                    <div id="btn2">
                    <asp:Button ID="btnClearAll" runat="server" CssClass="btn btn-group-justified btn-primary" CausesValidation="false"  Text="Clear Fields" OnClick="btnClearAll_Click" formnovalidate="formnovalidate"/>
                    </div>
                </div>
                <asp:ValidationSummary ID="valSummary" runat="server"
                    HeaderText="Review your input, the following errors occurred:"
                    ShowSummary="true" DisplayMode="List" forecolor="Red"/>

                <asp:RequiredFieldValidator
                    ControlToValidate="txt_name"
                    Display="None"
                    ErrorMessage="UserName is Required"
                    ForeColor="Red"
                    runat="server" />
                <asp:RequiredFieldValidator
                    ControlToValidate="txt_password"
                    Display="None"
                    ErrorMessage="Password is Required"
                    ForeColor="Red"
                    runat="server" />
                <asp:RequiredFieldValidator
                    ControlToValidate="txt_password2"
                    Display="None"
                    ErrorMessage="You must type your password again"
                    ForeColor="Red"
                    runat="server" />

                <asp:CompareValidator 
                    runat="server" 
                    Display="None"
                    ID="cmpPassword" 
                    ControlToValidate="txt_password" 
                    ControlToCompare="txt_password2"
                    Operator="Equal"
                    Type="String" 
                    ErrorMessage="Your Passwords do not match." /><br />


                </div>
            </div>
    </asp:Content>