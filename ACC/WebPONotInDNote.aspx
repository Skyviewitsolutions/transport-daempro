﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="WebPONotInDNote.aspx.cs" Inherits="ACC.WebPONotInDNote" Culture="ar-EG"
    UICulture="ar-EG" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<<<<<<< HEAD
      <div class="col-md-12  col-sm-12 col-xs-12">
        <div class="card card-body">
           
           
                    <h3 align="center" >
                        أوامر شراء غير مدرجه في بيان أستلام</h3>
=======
         <div class="ColorRounded4Corners col-md-12 col-sm-12 col-xs-12">
           
           
                    <legend align="center" style="font-size: 18px; color: #800000; text-align: center;">
                        أوامر شراء غير مدرجه في بيان أستلام</legend>
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                  <div class="box box-info" align="right">
                <div class="body">
                    <div class="row">

<<<<<<< HEAD
                       
=======
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:CheckBox ID="ChkQuan" runat="server" ToolTip="يتم مقارنة كميات الاصناف في امر الشراء مع كميات الاصناف في بيان الاستلام المدرج فية امر الشراء و اذا حدث اي اختلاف سواء بالزيادة او النقص يتم عرض رقم امر الشراء في التقرير" Text="فحص تطابق الكميات" />
                        </div></div></div>
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                       <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:ImageButton ID="BtnProcess" runat="server" AlternateText="تشغيل" ValidationGroup="1"   
                                    ImageUrl="~/images/setting.png" ToolTip="تشغيل التقرير" OnClick="BtnProcess_Click" />
                                <asp:ImageButton ID="BtnPrint1" Visible="false" ToolTip="Print" CommandName="1" runat="server" ImageUrl="~/images/print.png"
                                      OnCommand="BtnPrint1_Command" OnClientClick="aspnetForm.target ='_blank';" />                                    
                                <asp:ImageButton ID="BtnExcel" Visible="false" runat="server" AlternateText="تصدير للإكسل" CommandName="Excel"  
                                    ImageUrl="~/images/sheet.png" ToolTip="'طباعة بيانات التقرير" OnClientClick="aspnetForm.target ='_blank';"
                                    OnClick="BtnExcel_Click" />
<<<<<<< HEAD
                                       <asp:CheckBox ID="ChkQuan" runat="server" ToolTip="يتم مقارنة كميات الاصناف في امر الشراء مع كميات الاصناف في بيان الاستلام المدرج فية امر الشراء و اذا حدث اي اختلاف سواء بالزيادة او النقص يتم عرض رقم امر الشراء في التقرير" Text="فحص تطابق الكميات" />
                       
=======
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                           </div></div></div>
               <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label4" runat="server" Text="عرض السجلات"></asp:Label>
                         

                                <asp:DropDownList ID="ddlRecordsPerPage" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRecordsPerPage_SelectedIndexChanged">
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="20">20</asp:ListItem>
                                    <asp:ListItem Value="50">50</asp:ListItem>
                                    <asp:ListItem Value="100">100</asp:ListItem>
                                    <asp:ListItem Value="200">200</asp:ListItem>
                                    <asp:ListItem Value="500">500</asp:ListItem>
                                    <asp:ListItem Value="1000">1000</asp:ListItem>
                                    <asp:ListItem Value="2000">2000</asp:ListItem>
                                    <asp:ListItem Value="-1">الكل</asp:ListItem>
                                </asp:DropDownList>
                        </div></div></div>    
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="سجل"></asp:Label>                            
                              </div></div></div>
                      
          

<<<<<<< HEAD
                     <div class="table table-responsive table-hover text-center">
=======
                     <div class="table-responsive">
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                    <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                        GridLines="None" AutoGenerateColumns="False" AllowPaging="True" PageSize="20"  EmptyDataText="لا توجد بيانات"
                        Width="100%" OnPageIndexChanging="grdCodes_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="المستودع" SortExpression="VouLoc" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblVouLoc" Text='<%# Bind("VouLoc") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="رقم المستند" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                     <asp:HyperLink ID="lblVouNo" Text='<%# Eval("VouNo") %>' ToolTip="عرض المستند" NavigateUrl='<%# string.Format("WebPurchaseOrder.aspx?AreaNo={0}&StoreNo={1}&FNum={2}",AreaNo,StoreNo,Eval("VouNo")) %>' Target="_blank"
                                    runat="server"></asp:HyperLink>
                                </ItemTemplate>
                                <ControlStyle Width="120px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="التاريخ" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblVouDate" Text='<%# Eval("VouDate") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="120px" />
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
             </div></div></div>
<<<<<<< HEAD
        </div></div>
=======
        </div>
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
  
</asp:Content>
