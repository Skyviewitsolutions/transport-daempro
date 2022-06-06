﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="WebLedger.aspx.cs" Inherits="ACC.WebLedger" Culture="ar-EG" UICulture="ar-EG" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function ace1_itemSelected(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_txtCode');
            var ace2Value = $get('ContentPlaceHolder1_txtName');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="ColorRound4Courner">
            <div style="text-align: right; float: right; display: block;">
            </div>
            <center>
                <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 98%;
                    border: solid 2px #800000">
                    <legend align="center" style="font-size: 18px; color: #800000; text-align: center;">
                        دفاتر الاستاذ</legend>
                    <table width="99%">
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label2" runat="server" Text="المستوى"></asp:Label>
                            </td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="ddlLevel" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLevel_SelectedIndexChanged">
                                    <asp:ListItem Value="0">الجميـع</asp:ListItem>
                                    <asp:ListItem Value="1">المستوى 1</asp:ListItem>
                                    <asp:ListItem Value="2">المستوى 2</asp:ListItem>
                                    <asp:ListItem Value="3">المستوى 3</asp:ListItem>
                                    <asp:ListItem Value="4">المستوى 4</asp:ListItem>
                                    <asp:ListItem Value="5">المستوى 5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 100px">
                                <asp:Label ID="Label3" runat="server" Text="الحساب الرئيسي"></asp:Label>
                            </td>
                            <td style="width: 400px" colspan="2">
                                <asp:DropDownList ID="ddlFather" Width="300px" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="ddlLevel_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:CheckBox ID="chkCode" Text="كود الحساب" runat="server" AutoPostBack="true" OnCheckedChanged="chkCode_CheckedChanged" />
                            </td>
                            <td rowspan="4" style="text-align: center">
                                <asp:ImageButton ID="BtnProcess" runat="server" AlternateText="تشغيل" ValidationGroup="1"   
                                    ImageUrl="~/images/Process.png" ToolTip="تشغيل التقرير" OnClick="BtnProcess_Click" />
                                <asp:ImageButton ID="BtnPrint1" ToolTip="Print" CommandName="1" runat="server" ImageUrl="~/images/print_64A.png"
                                      OnCommand="BtnPrint1_Command" OnClientClick="aspnetForm.target ='_blank';" />                                    
                                <asp:ImageButton ID="BtnExcel" runat="server" AlternateText="تصدير للإكسل" CommandName="Excel"  
                                    ImageUrl="~/images/Excel.png" ToolTip="'طباعة بيانات التقرير" OnClientClick="aspnetForm.target ='_blank';"
                                    OnClick="BtnExcel_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:CheckBox ID="ChkPeriod" runat="server" Checked="True" Text="جميع الفترات" AutoPostBack="True" oncheckedchanged="ChkPeriod_CheckedChanged" />
                            </td>
                            <td style="width: 100px">
                                <asp:Label ID="LblFDate" runat="server" Visible="false" Text="من تاريخ"></asp:Label>
                            </td>
                            <td style="width: 120px">
                               <asp:TextBox ID="txtFDate" MaxLength="10" Width="100px" Visible="false" 
                                    runat="server" AutoPostBack="True" ontextchanged="txtFDate_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="ValFDate" runat="server" ControlToValidate="txtFDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtFDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                            </td>
                            <td style="width: 100px">
                                <asp:Label ID="LblEDate" runat="server" Visible="false" Text="إلى تاريخ"></asp:Label>
                            </td>                            
                            <td style="width: 200px">
                               <asp:TextBox ID="txtEDate" MaxLength="10" Width="100px" Visible="false" 
                                    runat="server" AutoPostBack="True" ontextchanged="txtEDate_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="ValEDate" runat="server" ControlToValidate="txtEDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <ajax:CalendarExtender ID="CalendarExtender2" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtEDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                            </td>                            
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:CheckBox ID="ChkStartMove" runat="server" 
                                    Text="تصفير الأرصدة الأفتتاحية"  Checked="false"
                                    AutoPostBack="True" oncheckedchanged="ChkStartMove_CheckedChanged"  />
                            </td>
                            <td style="width: 100px">
                                &nbsp;</td>                            
                            <td style="width: 200px">
                                &nbsp;</td>                            
                        </tr>
                        <tr>
                            <td style="width: 100px">
                                <asp:Label ID="Label4" runat="server" Text="عرض السجلات"></asp:Label>
                            </td>
                            <td style="width: 100px">
                                <asp:DropDownList ID="ddlRecordsPerPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRecordsPerPage_SelectedIndexChanged">
                                    <asp:ListItem Value="10">10</asp:ListItem>
                                    <asp:ListItem Value="20">20</asp:ListItem>
                                    <asp:ListItem Value="50">50</asp:ListItem>
                                    <asp:ListItem Value="100">100</asp:ListItem>
                                    <asp:ListItem Value="200">200</asp:ListItem>
                                    <asp:ListItem Value="500">500</asp:ListItem>
                                    <asp:ListItem Value="1000">1000</asp:ListItem>
                                    <asp:ListItem Value="2000">2000</asp:ListItem>
                                    <asp:ListItem Value="-1">الكل</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td colspan="3" style="text-align: right;">
                                <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>
                                &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="سجل"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <div style="width: 100%;  height:500px; overflow:none; overflow-x:auto ; border: 1px solid #800000;">
                    <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                        GridLines="None" AutoGenerateColumns="False" AllowPaging="True" PageSize="20"
                        Width="99.9%" OnPageIndexChanging="grdCodes_PageIndexChanging" 
                        onrowcreated="grdCodes_RowCreated">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="كود الحساب" SortExpression="Code" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <asp:HyperLink ID="lblCode" Text='<%# Bind("Code") %>' NavigateUrl='<%# string.Format("~/WebStatement.aspx?Code={0}",Eval("Code")) %>' Target="_blank" runat="server"></asp:HyperLink>   
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lbltot" Text="الاجمالي" runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="50px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="أسم الحساب" SortExpression="Name1" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label ID="lblName1" Text='<%# Bind("Name1") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Width="250px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="أول مدين" SortExpression="odacc" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                <table width="100%" cellpadding="2" cellspacing="2">
                                    <tr>
                                        <th colspan="2">
                                            أول الفترة
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                           مدين
                                        </th>
                                        <th>
                                            دائن
                                        </th>
                                    </tr>
                                </table>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotodacc" Text='<%# Eval("odacc","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotalodacc" Text='<%# Totalodacc %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="أول دائن" SortExpression="ocacc" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotocacc" Text='<%# Eval("ocacc","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotalocacc" Text='<%# Totalocacc %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="حركة مدينة" SortExpression="dacc" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                <table width="100%" cellpadding="2" cellspacing="2">
                                    <tr>
                                        <th colspan="2">
                                            حركة حالية
                                        </th>
                                    </tr>
                                    <tr>
                                        <th>
                                           مدين
                                        </th>
                                        <th>
                                            دائن
                                        </th>
                                    </tr>
                                </table>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotdacc" Text='<%# Eval("dacc","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotaldacc" Text='<%# Totaldacc %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="حركة دائنة" SortExpression="cacc" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotcacc" Text='<%# Eval("cacc","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotalcacc" Text='<%# Totalcacc %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="رصيد مدين" SortExpression="DBal" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    <table width="100%" cellpadding="2" cellspacing="2">
                                        <tr>
                                            <th colspan="2">
                                                رصيد نهاية الفترة
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>
                                               مدين
                                            </th>
                                            <th>
                                                دائن
                                            </th>
                                        </tr>
                                    </table>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotDBal" Text='<%# Eval("DBal","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotalDBal" Text='<%# TotalDBal %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>                            
                            <asp:TemplateField HeaderText="رصيد دائن" SortExpression="CBal" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTotCBal" Text='<%# Eval("CBal","{0:N2}") %>' runat="server"></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:Label ID="lblTotalCBal" Text='<%# TotalCBal %>' runat="server"></asp:Label>
                                </FooterTemplate>
                                <ControlStyle Width="100px" />
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
<div id="DivClosePeriod" runat="server" >
                <asp:Button ID="BtnClose" runat="server" Text="أغلاق الفترة"  OnClientClick="aspnetForm.target ='_blank';" onclick="BtnClose_Click" />
                <asp:Button ID="BtnOpen" runat="server" Text="فتح فترة جديدة" OnClientClick="aspnetForm.target ='_blank';" onclick="BtnOpen_Click" />
                <asp:Label ID="lblCode" Text='حساب الأرباح و الخسائر المرحلة للفترة' runat="server"></asp:Label>

                <asp:TextBox ID="txtCode" runat="server" autocomplete="off" placeholder="أدخل كود الحساب" Width="150px" />
                                                <ajax:AutoCompleteExtender ID="AutoCompleteExtender03" runat="server" TargetControlID="txtCode"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList" OnClientItemSelected="ace1_itemSelected"
                                                MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />

                <asp:TextBox ID="txtName" placeholder="أدخل اسم الحساب" runat="server" Width="300px" autocomplete="off" />
                                            <ajax:AutoCompleteExtender ID="AutoCompleteName" runat="server" TargetControlID="txtName"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList2" MinimumPrefixLength="1"
                                                OnClientItemSelected="ace1_itemSelected" CompletionInterval="500" EnableCaching="true"
                                                CompletionSetCount="12" CompletionListCssClass="autocomplete_completionListElement1"
                                                CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />

</div>
                <br />
            </center>
        </div>
    </center>
</asp:Content>
