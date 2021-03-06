﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Program.master" AutoEventWireup="true" CodeFile="Themes.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
                    
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#themeModal" id="btnAddTheme">
                        New Theme</button>
               
         <div class="col-lg-5">
         <asp:gridview ID="ThemeGridView" DataKeyNames="ThemeID" AutoGenerateColumns="false" CssClass="table table-striped" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" DataSourceID="themesDataSource" runat="server">
             <Columns>   
             <asp:BoundField DataField="ThemeName" HeaderText="Program Theme" SortExpression="ThemeName" />
             </Columns>  
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />             
         </asp:gridview>

         </div>
            <asp:SqlDataSource ID="themesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Project %>" UpdateCommand="Update ProgramThemes SET ThemeName = @ThemeName WHERE ThemeID = @ThemeID" SelectCommand="SELECT * FROM ProgramThemes" DeleteCommand="Delete FROM ProgramThemes WHERE ThemeID = @ThemeID" >
                <DeleteParameters><asp:Parameter Name="ThemeID" /></DeleteParameters>
                <UpdateParameters><asp:Parameter Name="ThemeName" />
                    <asp:Parameter Name="ThemeID" />
                </UpdateParameters>
            </asp:SqlDataSource>

        <!-- Modal -->
    <div class="modal fade" id="themeModal" tabindex="-1" role="dialog" aria-labelledby="animalModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" style="max-width: 400px;" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title" id="themeModalLabel">Add a New Program Theme</h5>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="form-control-label">Theme Name</label>
                        <asp:TextBox ID="txtThemeName" runat="server" class="form-control" required="required" maxlength="50"></asp:TextBox>
                    </div>
                  

                    <div id="btn">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success btn-group-justified" Text="Add Theme" OnClick="btnSubmit_Click" /><br />
                    </div>




                </div>
            </div>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
</asp:Content>

