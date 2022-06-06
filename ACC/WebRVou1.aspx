﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    Culture="ar-EG" UICulture="ar-EG" MaintainScrollPositionOnPostback="true" CodeBehind="WebRVou1.aspx.cs"
    Inherits="ACC.WebRVou1" %>

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

        function ace2_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var x1 = str.split('_');
            //var str2 = 'ContentPlaceHolder1_txtName_' + x1[3];
            var str2 = 'ContentPlaceHolder1_txtName';
            var ace1Value = $get(str);
            var ace2Value = $get(str2);
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }

        function ace0_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var ace1Value = $get(str);
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace1Value.title = x[0];
            return false;
        }

        function ace1_itemSelectedCostCenter(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCostCenter');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_lblCostCenterCode');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace2Value.value = x[0];
            return false;
        }

        function ace1_itemSelectedProject(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtProject');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_lblProjectCode');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace2Value.value = x[0];
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="ColorRounded4Corners" dir="rtl" style="width: 99.8%">
            <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 99.5%;
                border: solid 2px #800000">
                <legend align="right" style="font-size: 18px; color: #800000; text-align: center;"><b>
                    <asp:Label ID="lblHead" runat="server" Text="[ سند القبض ]"></asp:Label>
                </b></legend>
                <center>
                    <table width="99%" cellpadding="3" cellspacing="0">
                        <tr>
                            <td align="right" style="width: 15%;">
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                            </td>
                            <td align="right" style="width: 17%;">
                                <asp:TextBox ID="txtSearch" MaxLength="10" Width="100px" placeholder="بحث" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="البحث عن بيانات سند القبض" OnClick="BtnFind_Click" />
                            </td>
                            <td align="right" style="width: 17%;" rowspan="2" >
                                <asp:RadioButtonList ID="rdoType" runat="server" RepeatColumns="1" AutoPostBack="True"
                                    OnSelectedIndexChanged="rdoType_SelectedIndexChanged">
                                    <asp:ListItem Value="0" Selected="True">فواتير</asp:ListItem>
                                    <asp:ListItem Value="1">عملاء</asp:ListItem>
                                    <asp:ListItem Value="2">رسوم إدارية</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                <asp:Label ID="Label1" runat="server" Text="رقم السند"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop"></asp:TextBox>
                                <asp:Label ID="lblBranch2" runat="server" Text="Label"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                    Display="Dynamic" ErrorMessage="يجب أختيار رقم السند" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="Label2" runat="server" Text="التاريخ"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 17%;">
                                <asp:TextBox ID="txtVouDate" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                                    Display="Dynamic" ErrorMessage="يجب أختيار تاريخ السند" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  ControlToValidate="txtVouDate" ValidationGroup="1" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$" runat="server" ErrorMessage="يجب أن تكون القيمة تاريخ">*</asp:RegularExpressionValidator>
                                <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                <asp:Label ID="lblClaim" runat="server" Text="رقم المطالبة"></asp:Label>
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:DropDownList ID="ddlClaim" Width="150px" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddlClaim_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="lblPerson" runat="server" Text="استلمنا من*"></asp:Label>
                            </td>
                            <td align="right" colspan="2" style="width: 35%;">
                                <asp:TextBox ID="txtPerson" MaxLength="50" Width="300px" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPerson"
                                    Display="Dynamic" ErrorMessage="يجب إدخال المستلم" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>                            
                        </tr>

                        <tr align="center">
                            <td colspan="7" style="width: 100%;">
                                <div id="divGrid" runat="server" style="width: 100%; overflow: none; overflow-y: none;
                                    overflow-x: auto; border: 1px solid #800000;">
                                    <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                        Width="99.5%" EmptyDataText="لا توجد بيانات" OnRowCancelingEdit="grdCodes_RowCancelingEdit"
                                        OnRowCommand="grdCodes_RowCommand" OnRowDeleting="grdCodes_RowDeleting">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="الغاء البند"
                                                        ImageUrl="~/images/cross.png" OnClientClick='return confirm("هل أنت متاكد من الغاء هذا البند؟")' />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:ImageButton ID="btnInsert" runat="server" CommandName="Insert" ToolTip="اضافة بند جديد"
                                                        ImageUrl="~/images/add.png" />
                                                </FooterTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="رقم الفاتورة" SortExpression="VouNo2" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo2") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:TextBox ID="txtVouNo2" runat="server"></asp:TextBox>
                                                </FooterTemplate>
                                                <ControlStyle Width="100px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="رقم اللوحة أو الهيكل" SortExpression="PlateNo" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPlateNo" Text='<%# Bind("PlateNo") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ControlStyle Width="100px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="المستلم" SortExpression="Name" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblName" Text='<%# Bind("Name") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ControlStyle Width="200px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="جهة الترحيل" SortExpression="DestinationName1" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDestinationName" Text='<%# Bind("DestinationName1") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ControlStyle Width="100px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="المبلغ" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblAmount" Text='<%# Eval("Amount","{0:N2}") %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ControlStyle Width="120px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                                            HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" 
                                            BorderColor="#C7C7C7" />
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
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label4" runat="server" Text="الاجمالي"></asp:Label>
                            </td>
                            <td align="right" style="width: 20%;">
                                <asp:TextBox ID="txtAmount" MaxLength="15" ReadOnly="true" runat="server" 
                                    AutoPostBack="True" ontextchanged="txtDiscount_TextChanged"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAmount"
                                    Display="Dynamic" ErrorMessage="يجب إدخال مبلغ السند" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="ValDebit2" runat="server" ControlToValidate="txtAmount"
                                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                    Type="Currency">*</asp:CompareValidator>
                            </td>
                            <td align="right" style="width: 15%;" rowspan="3">
                                <asp:RadioButtonList ID="rdoPayment" runat="server" AutoPostBack="True" Width="80px" Visible="false"
                                    onselectedindexchanged="rdoPayment_SelectedIndexChanged" 
                                    BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="2px" CellPadding="2" 
                                    CellSpacing="2">
                                    <asp:ListItem Selected="True" Value="0">نقداً</asp:ListItem>
                                    <asp:ListItem Value="1">شيكات</asp:ListItem>
                                    <asp:ListItem Value="2">شبكة</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label11" runat="server" Text="وذلك عن"></asp:Label>
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:TextBox ID="txtRemark" MaxLength="200" Width="300px" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label12" runat="server" Text="الخصم"></asp:Label>
                            </td>
                            <td align="right" style="width: 20%;">
                                <asp:TextBox ID="txtDiscount" MaxLength="10" runat="server" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDiscount"
                                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                    Type="Currency">*</asp:CompareValidator>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="lblChqDate" runat="server" Visible="false" Text="تاريخ الشيك*"></asp:Label>
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:TextBox ID="txtChqDate" MaxLength="10" Visible="false" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ValChqDate" runat="server" ControlToValidate="txtChqDate" Enabled="false"
                                    Display="Dynamic" ErrorMessage="يجب إدخال تاريخ الشيك" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <ajax:CalendarExtender ID="CalendarExtender2" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtChqDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtChqDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label16" runat="server" Text="ارضيات"></asp:Label>
                            </td>
                            <td align="right" style="width: 20%;">
                                <asp:TextBox ID="txtLand" MaxLength="10" runat="server" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtLand"
                                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                    Type="Currency">*</asp:CompareValidator>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="lblChqNo" runat="server" Visible="false" Text="رقم الشيك*"></asp:Label>
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:TextBox ID="txtchqNo" Visible="false" MaxLength="15" Width="300px" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ValchqNo" runat="server" ControlToValidate="txtchqNo" Enabled="false"
                                    Display="Dynamic" ErrorMessage="يجب إدخال رقم الشيك" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label18" runat="server" Text="عميل"></asp:Label>
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtCust" MaxLength="10" runat="server" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtCust"
                                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                    Type="Currency">*</asp:CompareValidator>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="lblBankName" runat="server" Visible="false" Text="مسحوب على بنك*"></asp:Label>
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:TextBox ID="txtBankName" MaxLength="50" Visible="false" Width="300px" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ValBankName" runat="server" ControlToValidate="txtBankName" Enabled="false"
                                    Display="Dynamic" ErrorMessage="يجب إدخال مسحوب على ينك" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label19" runat="server" Text="إيرادات أخرى"></asp:Label>
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtOthers" MaxLength="10" runat="server" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtOthers"
                                    Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                    Type="Currency">*</asp:CompareValidator>
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                                <asp:Label ID="Label20" runat="server" Visible="false" Text="مسحوب على بنك*"></asp:Label>
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:TextBox ID="TextBox2" MaxLength="50" Visible="false" Width="300px" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBankName" Enabled="false"
                                    Display="Dynamic" ErrorMessage="يجب إدخال مسحوب على ينك" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label7" runat="server" Text="الصافي"></asp:Label>
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtNet" MaxLength="10" ReadOnly="true" runat="server"></asp:TextBox>
                                <asp:CheckBox ID="ChkCheque" Text="بشيك" runat="server" AutoPostBack="True" OnCheckedChanged="ChkCheque_CheckedChanged" />
                            </td>
                            <td align="right" style="width: 1%;">
                            </td>
                            <td align="center" style="width: 15%;">
                            </td>
                            <td align="right" style="width: 34%;" colspan="2">
                                <asp:LinkButton ID="BtnRecovery" runat="server" onclick="BtnRecovery_Click">الاسترداد التلقائي</asp:LinkButton>
                            </td>
                        </tr>                
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                                <asp:Label ID="Label21" runat="server" Text="المدقوع نقداً"></asp:Label>                                
                                </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtCashAmount" MaxLength="15" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="ValCashAmount2" runat="server" ControlToValidate="txtCashAmount"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <asp:CheckBox ID="ChkCashAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkCashAmount_CheckedChanged" />
                            </td>
                            <td align="right" style="width: 1%;">
                                &nbsp;</td>
                            <td align="center" style="width: 15%;">
                                &nbsp;</td>
                            <td align="right" style="width: 34%;" colspan="2">
                                &nbsp;</td>
                        </tr>                
                        <tr>
                            <td align="right" style="width: 15%;">
                                &nbsp;
                            <asp:Label ID="Label22" runat="server" Text="شبكة مدى"></asp:Label>                                    
                            </td>
                            <td align="right" style="width: 35%;" colspan="2">
                                <asp:TextBox ID="txtShAmount" MaxLength="15" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtShAmount"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <asp:CheckBox ID="ChkShAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkShAmount_CheckedChanged" />
                            </td>
                            <td align="right" style="width: 1%;">
                                &nbsp;</td>
                            <td align="center" style="width: 15%;">
                                &nbsp;</td>
                            <td align="right" style="width: 34%;" colspan="2">
                                &nbsp;</td>
                        </tr>                
                    </table>
                    <table id="Table2" width="100%" cellpadding="0" cellspacing="0">
                        <tr align="right">
                            <td style="width: 70px;">
                                <asp:Label ID="Label14" runat="server" Text="المستخدم"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtUserName" Width="300px" runat="server" MaxLength="50" BackColor="#E8E8E8" CssClass="MouseStop"
                                    Enabled="false"></asp:TextBox>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label15" runat="server" Text="بتاريخ"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtUserDate" Width="150px" runat="server" MaxLength="50" BackColor="#E8E8E8" CssClass="MouseStop"
                                    Enabled="false">                                                               
                                </asp:TextBox>
                                <asp:Label ID="Label27" runat="server" Text="* حقول الزامية"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
                            </td>
                        </tr>
                        <tr align="right">
                            <td colspan="4" style="text-align: center">
                                <asp:ImageButton ID="BtnNew" runat="server" AlternateText="جديد" CommandName="New"
                                    ImageUrl="~/images/insource_642.png"   ToolTip="أضافة سند جديد"
                                    ValidationGroup="1" OnClientClick='return confirm("هل أنت متاكد من حفظ بيانات السند؟")'
                                    OnClick="BtnNew_Click" />
                                <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="تعديل" CommandName="Edit"
                                    ImageUrl="~/images/draw_pen_642.png"   ToolTip="تعديل بيانات السند"
                                    Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                                <asp:ImageButton ID="BtnClear" runat="server" AlternateText="مسح" CommandName="Clear"
                                    ImageUrl="~/images/erasure_642.png"   ToolTip="مسح خانات الشاشة"
                                    OnClick="BtnClear_Click" />
                                <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="إلغاء" CommandName="Delete"
                                    ImageUrl="~/images/cut_642.png"   ToolTip="إلغاء بيانات السند" OnClientClick='return confirm("هل أنت متاكد من الغاء بيانات السند؟")'
                                    OnClick="BtnDelete_Click" />
                                <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="بحث" CommandName="Find"
                                    ImageUrl="~/images/binoculars_642.png"   ToolTip="البحث عن بيانات السند"
                                    OnClick="BtnSearch_Click" />
                                <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="طباعة" CommandName="Print"
                                    ImageUrl="~/images/print_64A.png" ValidationGroup="1"   ToolTip="طباعة السند"
                                    OnClick="BtnPrint_Click" />
                            </td>
                        </tr>
                    </table>
                </center>
                <div style="text-align: left; width: 50%; float: left;">
                    <asp:Panel ID="Panel2" runat="server" Height="30px" BackColor="#5D7B9D" Width="99.5%"
                        Direction="RightToLeft" ForeColor="#FFFF99">
                        <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                            <div style="float: right;">
                                المرفقات</div>
                            <div style="float: right; margin-right: 20px;">
                                <asp:Label ID="Label34" runat="server">(عرض التفاصيل)</asp:Label>
                            </div>
                            <div style="float: left; vertical-align: middle;">
                                <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" AlternateText="(Show Details...)" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel1" runat="server" Height="0" BackColor="#FFFFCC" Width="99.3%"
                        BorderColor="Maroon">
                        <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="false"
                            ShowHeader="false" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                            Width="99%" OnRowDeleting="grdAttach_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="الغاء الملف"
                                            ImageUrl="~/images/cross.png" OnClientClick='return confirm("هل أنت متاكد من الغاء الملف؟")' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="الملف" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="lblFileName" Text='<%# Bind("FileName") %>' NavigateUrl='<%# Bind("FileName2") %>'
                                            Target="_blank" runat="server"></asp:HyperLink>
                                    </ItemTemplate>
                                    <ControlStyle Width="300px" />
                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        </asp:GridView>
                        <table width="100%">
                            <tr>
                                <td align="right">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </td>
                                <td align="left">
                                    <asp:ImageButton ID="BtnAttach" runat="server" AlternateText="مرفقات" CommandName="Attach"
                                          ImageUrl="~/images/attach2.png" OnClick="BtnAttach_Click" ToolTip="المرفقات"
                                        ValidationGroup="1" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <ajax:CollapsiblePanelExtender ID="cpeDemo" runat="Server" TargetControlID="Panel1"
                        ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label34"
                        ImageControlID="Image1" ExpandedText="(أخفاء التفاصيل)" CollapsedText="(عرض التفاصيل)"
                        ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                        SuppressPostBack="true" />
                </div>
                <div style="text-align: right; width: 49%; float: right;">
                    <asp:Panel ID="Panel3" runat="server" Height="30px" BackColor="#5D7B9D" Width="99.5%"
                        Direction="RightToLeft" ForeColor="#FFFF99">
                        <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                            <div style="float: right;">
                                التوجيه المحاسبي</div>
                            <div style="float: right; margin-right: 20px;">
                                <asp:Label ID="Label6" runat="server">(عرض التفاصيل)</asp:Label>
                            </div>
                            <div style="float: left; vertical-align: middle;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/expand_blue.jpg"
                                    AlternateText="(Show Details...)" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel4" runat="server" Height="0" BackColor="#FFFFCC" Width="99.3%"
                        BorderColor="Maroon">
                        <table width="99%" cellpadding="3" cellspacing="0" >
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label10" runat="server" Text="النقدية/البنك"></asp:Label>
                                    *
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlDbCode" Width="250px" runat="server" Enabled="false" >
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlDbCode"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="يجب أختيار حساب النقدية/البنك"
                                        ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label3" runat="server" Text="المنطقة"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlArea" Width="250px" runat="server" Enabled="false" >
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label13" runat="server" Text="الفرع"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlCostCenter" Width="250px" runat="server" Enabled="false">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label5" runat="server" Text="المشروع"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlProject" Width="250px" runat="server" Enabled="false">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label8" runat="server" Text="حساب التكاليف"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlCostAcc" Width="250px" runat="server" Enabled="false">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label17" runat="server" Text="الموظف"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlEmp" Width="250px" runat="server" Enabled="false">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 125px;">
                                    <asp:Label ID="Label9" runat="server" Text="الشاحنة"></asp:Label>
                                </td>
                                <td align="center" style="width: 300px;">
                                    <asp:DropDownList ID="ddlCarNo" Width="250px" runat="server" Enabled="false">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server" TargetControlID="Panel4"
                        ExpandControlID="Panel3" CollapseControlID="Panel3" Collapsed="True" TextLabelID="Label6"
                        ImageControlID="ImageButton1" ExpandedText="(أخفاء التفاصيل)" CollapsedText="(عرض التفاصيل)"
                        ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                        SuppressPostBack="true" />
                </div>
            </fieldset>
        </div>
    </center>
</asp:Content>