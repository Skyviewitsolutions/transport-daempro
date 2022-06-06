﻿<%@ Page Title="المدن" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="WebCity.aspx.cs" Inherits="ACC.WebCity" Culture="ar-EG" UICulture="ar-EG" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <div class="Round4Courner" style="width: 98%">
                <center>
                    <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="المدن"></asp:Label></center>
                <div style="width: 100%; overflow:none; overflow-x:auto ; border: 1px solid #800000;">
                <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="Code" 
                        AllowPaging="True" Width="99.7%" OnRowUpdating="grdCodes_RowUpdating" OnPageIndexChanging="grdCodes_PageIndexChanging"
                    OnRowCancelingEdit="grdCodes_RowCancelingEdit" OnRowCommand="grdCodes_RowCommand"
                    OnRowDeleting="grdCodes_RowDeleting" OnRowEditing="grdCodes_RowEditing" 
                        OnSelectedIndexChanging="grdCodes_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="الغاء المدينه"
                                    ImageUrl="~/images/cross.png" OnClientClick='return confirm("هل أنت متاكد من الغاء هذا البند؟")' />
                                <asp:ImageButton ID="btnSelect" runat="server" CommandName="Select" ToolTip="اختيار المدينه"
                                    ImageUrl="~/images/arrow_undo.png" />
                                <asp:ImageButton ID="btnEdit" runat="server" CommandName="Edit" ToolTip="تعديل بيانات المدينه"
                                    ImageUrl="~/images/pencil.png" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:ImageButton ID="btnUpdate" runat="server" CommandName="Update" ToolTip="حفظ التعديلات"
                                    ImageUrl="~/images/accept.png" onload="btnUpdate_Load" />
                                <asp:ImageButton ID="btnCancel" runat="server" CommandName="Cancel" ToolTip="تجاهل التعديلات"
                                    ImageUrl="~/images/delete.png" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:ImageButton ID="btnInsert" runat="server" CommandName="Insert" ToolTip="اضافة مدينه جديدة"
                                    ImageUrl="~/images/add.png" />
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="الوصف بالعربي" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblName1" Text='<%# Bind("Name1") %>' runat="server"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName1" Text='<%# Bind("Name1") %>' runat="server" Width="100%" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtName1" runat="server" Width="100%" />
                            </FooterTemplate>
                            <ControlStyle Width="200px" />
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="الوصف بالانجليزي" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblName2" Text='<%# Bind("Name2") %>' runat="server"></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName2" Text='<%# Bind("Name2") %>' runat="server" Width="100%" />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtName2" runat="server" Width="100%" />
                            </FooterTemplate>
                            <ControlStyle Width="200px" />
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="الفرع" Visible="true" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblSite" Text='<%# Bind("Site2") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="dllFType2" runat="server" Width="99%" EnableViewState="false"
                                        OnInit="dllFType2_Init">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="ddlFType" runat="server" Width="99%"/>
                                </FooterTemplate>
                                <ControlStyle Width="200px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                        HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </div>
                <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                <br />
            </div>
        </center>
    </div>
</asp:Content>