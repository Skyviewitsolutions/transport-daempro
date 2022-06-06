﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="WebLShipment.aspx.cs" Inherits="ACC.WebLShipment" Culture="ar-EG" UICulture="ar-EG"
    MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">
        function makesum(sender, args) {
            var items = document.getElementById('<%=ddlItems.ClientID %>');
            var Total2 = document.getElementById('ContentPlaceHolder1_grdCodes_lblTotal2');
            var x = 0;
            for (i = 0; i < items.value; i++) {
                var Qty = document.getElementById('ContentPlaceHolder1_grdCodes_txtQty_' + i.toString().trim());
                var Price = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_' + i.toString().trim());
                var Total = document.getElementById('ContentPlaceHolder1_grdCodes_lblTotall_' + i.toString().trim());
                Total.innerHTML = (parseFloat(Qty.value) * parseFloat(Price.value)).toString();
                x += parseFloat(Qty.value) * parseFloat(Price.value);
            }
            Total2.innerHTML = x.toFixed(2).toString();
        }

        function CheckItem1(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var ShabakaAmount = document.getElementById('<%=txtShabakaAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtPrice.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && SiteAmount && ShabakaAmount && CustomerAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!ShabakaAmount.value) ShabakaAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(SiteAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(SiteAmount.value) + parseFloat(ShabakaAmount.value) + parseFloat(CustomerAmount.value)) {
                    return
                }
            }

            args.IsValid = true;

            if (ShabakaAmount.fireEvent) {
                ShabakaAmount.fireEvent("onchange");
            } else {
                $('#<%=txtShabakaAmount.ClientID %>').change();
            }

            return;
        }

        function CheckItem2(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var ShabakaAmount = document.getElementById('<%=txtShabakaAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtPrice.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && SiteAmount && ShabakaAmount && CustomerAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!ShabakaAmount.value) ShabakaAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(CashAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(SiteAmount.value) + parseFloat(ShabakaAmount.value) + parseFloat(CustomerAmount.value)) {
                    return
                }

            }
            args.IsValid = true;
            return
        }


        function CheckItem3(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var ShabakaAmount = document.getElementById('<%=txtShabakaAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtPrice.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && SiteAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!ShabakaAmount.value) ShabakaAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(ShabakaAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(SiteAmount.value) + parseFloat(ShabakaAmount.value) + parseFloat(CustomerAmount.value)) {
                    return
                }

            }
            args.IsValid = true;

            if (CashAmount.fireEvent) {
                CashAmount.fireEvent("onchange");
            } else {
                $('#<%=txtCashAmount.ClientID %>').change();
            }

            return
        }

        function CheckItem4(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var ShabakaAmount = document.getElementById('<%=txtShabakaAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtPrice.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && SiteAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!ShabakaAmount.value) ShabakaAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(CustomerAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(SiteAmount.value) + parseFloat(ShabakaAmount.value) + parseFloat(CustomerAmount.value)) {
                    return
                }

            }
            args.IsValid = true;

            if (SiteAmount.fireEvent) {
                SiteAmount.fireEvent("onchange");
            } else {
                $('#<%=txtSiteAmount.ClientID %>').change();
            }
            return
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="ColorRounded4Corners" style="width: 99.9%">
        <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 99.8%;
            border: solid 2px #800000">
            <legend align="right" style="font-size: 18px; color: #800000; text-align: center;">أتفاقية
                شحن بضاعة</legend>
            <table width="99%" cellpadding="5px" dir="rtl">
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label1" runat="server" Text="رقم الفاتورة"></asp:Label>
                        *
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop"></asp:TextBox>
                        <asp:Label ID="lblBranch" runat="server" Text="Label"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                            Display="Dynamic" ErrorMessage="يجب أختيار رقم الفاتورة" ForeColor="Red" SetFocusOnError="True"
                            ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 150px;">
                    </td>
                    <td style="width: 300px;" align="left" colspan="2">
                        <asp:Label ID="lblStatus" runat="server"  CssClass="blink" ForeColor="Red" Text=""></asp:Label>
                        <asp:TextBox ID="txtSearch" MaxLength="10" Width="100px" placeholder="بحث" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                            ToolTip="البحث عن بيانات فاتورة شحن" OnClick="BtnFind_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label4" runat="server" Text="التاريخ"></asp:Label>
                        *
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtHDate" MaxLength="10" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHDate"
                            Display="Dynamic" ErrorMessage="يجب أختيار تاريخ الفاتورة" ForeColor="Red" SetFocusOnError="True"
                            ValidationGroup="1">*</asp:RequiredFieldValidator>هـ
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label7" runat="server" Text="الموافق"></asp:Label>
                        *
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtGDate" MaxLength="10" runat="server" AutoPostBack="True" 
                            ontextchanged="txtGDate_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGDate"
                            Display="Dynamic" ErrorMessage="يجب أختيار تاريخ الفاتورة" ForeColor="Red" SetFocusOnError="True"
                            ValidationGroup="1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtGDate"
                            CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                            ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>م&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtGDate"
                            ValidationGroup="1" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$"
                            runat="server" ErrorMessage="يجب أن تكون القيمة تاريخ">*</asp:RegularExpressionValidator>
                        <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                            TargetControlID="txtGDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                            PopupPosition="BottomLeft" />
                        <asp:Label ID="LblFTime" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                        <asp:Label ID="Label25" Font-Underline="true" ForeColor="#800000" runat="server"
                            Text="بيانات المرسل"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label6" runat="server" Text="أسم المرسل"></asp:Label>
                        *
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtName" MaxLength="100" runat="server" Width="275px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtName"
                            Display="Dynamic" ErrorMessage="يجب إدخال أسم المرسل" ForeColor="Red" SetFocusOnError="True"
                            ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label9" runat="server" Text="رقم الهوية"></asp:Label>
                    </td>
                    <td style="width: 150px;">
                        <asp:TextBox ID="txtIDNo" MaxLength="15" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:RadioButtonList ID="rdoIDType" runat="server" RepeatColumns="2">
                            <asp:ListItem Selected="True" Value="0">الهوية</asp:ListItem>
                            <asp:ListItem Value="1">بطاقة</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label10" runat="server" Text="مصدرها"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtIDFrom" MaxLength="50" runat="server" Width="275px"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label11" runat="server" Text="تاريخها"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtIdDate" MaxLength="10" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtIdDate"
                            CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                            ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label3" runat="server" Text="العنوان"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtAddress" MaxLength="200" runat="server" Width="275px"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label28" runat="server" Text="رقم الجوال"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtMobileNo" MaxLength="20" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label2" runat="server" Text="الإيميل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="Txtmail" MaxLength="50" runat="server" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="1"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Txtmail"
                            ErrorMessage="خطأ في صيغة الايميل" CultureInvariantValues="true" Display="Dynamic"
                            ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label12" runat="server" Text="تأكيد الإيميل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="Txtmail2" MaxLength="50" runat="server" Width="250px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator5" ControlToCompare="Txtmail" Operator="Equal"
                            ValidationGroup="1" ControlToValidate="Txtmail2" runat="server" CultureInvariantValues="true"
                            Display="Dynamic" ErrorMessage="تأكيد الإيميل لا يطابق الإيميل" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                    </td>
                    <td style="width: 150px;">
                        <asp:CheckBox ID="chkbPlaceFrom" runat="server" Text="الإستلام من موقع العميل" OnCheckedChanged="chkbPlaceFrom_CheckedChanged"
                            AutoPostBack="True" />
                    </td>
                    <td style="width: 150px;">
                        <asp:HyperLink ID="lnkDispFrom" Target="_blank" NavigateUrl="WebGetMap.aspx" Visible="false"
                            runat="server">تحديد الموقع</asp:HyperLink>
                    </td>
                    <td style="width: 150px;">
                        <asp:Button ID="btnFrom" runat="server" Text="حفظ الموقع" Visible="False" OnClick="btnFrom_Click" />
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:HyperLink ID="lnkFrom" Target="_blank" Visible="false" runat="server">عرض الموقع</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label5" runat="server" Text="مكان الشحن"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlPlaceofLoading" Width="280" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlPlaceofLoading_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label13" runat="server" Text="جهة الترحيل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlDestination" Width="280" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlPlaceofLoading_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                        <asp:Label ID="Label24" runat="server" ForeColor="#800000" Font-Underline="true"
                            Text="بيانات المرسل اليه"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label33" runat="server" Text="أسم المستلم"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtRecName" Width="275px" MaxLength="100" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label8" runat="server" Text="عنوان المستلم"></asp:Label>*
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtRecAddress" Width="275px" MaxLength="100" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="lblChqNo" runat="server" Text="رقم الجوال"></asp:Label>*
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtRecMobileNo" MaxLength="20" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRecMobileNo"
                            Display="Dynamic" ErrorMessage="يجب أختيار رقم جوال المستلم" ForeColor="Red"
                            SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label14" runat="server" Text="فرع استلام الشحنة"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlTo" Width="150" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label15" runat="server" Text="الإيميل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="Txtrecmail" MaxLength="50" runat="server" Width="250px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="1"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Txtrecmail"
                            ErrorMessage="خطأ في صيغة الايميل" CultureInvariantValues="true" Display="Dynamic"
                            ForeColor="Red">*</asp:RegularExpressionValidator>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label16" runat="server" Text="تأكيد الإيميل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="Txtrecmail2" MaxLength="50" runat="server" Width="250px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator3" ControlToCompare="Txtrecmail" Operator="Equal"
                            ValidationGroup="1" CultureInvariantValues="true" Display="Dynamic" ErrorMessage="تأكيد الإيميل لا يطابق الإيميل"
                            ForeColor="Red" ControlToValidate="Txtrecmail2" runat="server"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label38" runat="server" Text="مدة التسليم"></asp:Label>*
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlDPeriod" runat="server">
                            <asp:ListItem Value="-1" Selected="True">اختر مدة التسليم</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlDPeriod"
                            Display="Dynamic" ErrorMessage="يجب أختيار مدة التسليم" ForeColor="Red" SetFocusOnError="True"
                            InitialValue="-1" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label39" runat="server" Text="يوم"></asp:Label>
                    </td>
                    <td style="width: 150px;">
                    </td>
                    <td style="width: 300px;" colspan="2">
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                    </td>
                    <td style="width: 200px;">
                        <asp:CheckBox ID="chkbTo" runat="server" Text="التسليم إلى موقع العميل" OnCheckedChanged="chkbTo_CheckedChanged"
                            AutoPostBack="True" />
                    </td>
                    <td style="width: 100px;">
                        <asp:HyperLink ID="lnkDispTo" Target="_blank" NavigateUrl="WebGetMap.aspx" Visible="false"
                            runat="server">تحديد الموقع</asp:HyperLink>
                    </td>
                    <td style="width: 150px;">
                        <asp:Button ID="btnPlaceTo" runat="server" Text="حفظ الموقع" Visible="False" OnClick="btnPlaceTo_Click" />
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:HyperLink ID="lnkTo" Target="_blank" Visible="false" runat="server">عرض الموقع</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <th align="right">
                        <asp:Label ID="Label23" Font-Underline="true" ForeColor="#800000" runat="server"
                            Text="وصف الشحنة"></asp:Label>
                    </th>
                    <th colspan="2">
                        <asp:RadioButtonList ID="RdoGType" runat="server" RepeatColumns="2"  Visible = "false"
                            OnSelectedIndexChanged="RdoGType_SelectedIndexChanged" Width="200px">
                            <asp:ListItem Value="0">شحنة فردية</asp:ListItem>
                            <asp:ListItem Selected="True" Value="1">حمولة كاملة</asp:ListItem>
                        </asp:RadioButtonList>
                    </th>
                    <th align="right">
                    </th>
                    <th align="left">
                    </th>
                    <th align="left">
                        <asp:Label ID="lblItems" runat="server" Text="البنود"></asp:Label>&nbsp;
                        <asp:DropDownList ID="ddlItems" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlItems_SelectedIndexChanged">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem Selected="True">14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                        </asp:DropDownList>
                    </th>
                </tr>
            </table>
            <div id="Divsingle" runat="server" visible="false">
                <table width="99%" cellpadding="5px" dir="rtl">
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="lblAccess4" runat="server" Text="نوع الشحنة"></asp:Label>
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:DropDownList ID="ddlType" runat="server">
                                <asp:ListItem Value="1">سوائل</asp:ListItem>
                                <asp:ListItem Value="2">منتجات تجميل وعطورات</asp:ListItem>
                                <asp:ListItem Value="3">قابلة للكسر</asp:ListItem>
                                <asp:ListItem Value="4">صلبة</asp:ListItem>
                                <asp:ListItem Value="5">مستندات ورقية</asp:ListItem>
                                <asp:ListItem Value="6">مواد غذائية</asp:ListItem>
                                <asp:ListItem Value="7">مواد بناء</asp:ListItem>
                                <asp:ListItem Value="8">مواد مبردة</asp:ListItem>
                                <asp:ListItem Value="9">مواد سائبة</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 150px;">
                            <asp:Label ID="Label26" runat="server" Text="الوحدة"></asp:Label>
                        </td>
                        <td style="width: 300px; margin-right: 40px;" colspan="2">
                            <asp:DropDownList ID="ddlUnit" runat="server" Style="width: 120px" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlUnit_SelectedIndexChanged">
                                <asp:ListItem Value="1">كيلو جرام KG</asp:ListItem>
                                <asp:ListItem Value="2">باوند LB</asp:ListItem>
                                <asp:ListItem Value="3">طن</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="Label36" runat="server" Text="نوع التغليف"></asp:Label>
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:DropDownList ID="ddlCoverType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCoverType_SelectedIndexChanged">
                                <asp:ListItem Value="1">مغلف</asp:ListItem>
                                <asp:ListItem Value="2">ظرف</asp:ListItem>
                                <asp:ListItem Value="3">كرتون</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 150px;">
                            <asp:Label ID="Label37" runat="server" Text="المقاس"></asp:Label>
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:DropDownList ID="ddlCoverSize" runat="server" Style="width: 120px" AutoPostBack="true"
                                OnSelectedIndexChanged="ddlUnit_SelectedIndexChanged">
                                <asp:ListItem Value="1">صغير</asp:ListItem>
                                <asp:ListItem Value="2">وسط</asp:ListItem>
                                <asp:ListItem Value="3">كبير</asp:ListItem>
                                <asp:ListItem Selected="True" Value="4">مخصص</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="lblAccess6" runat="server" Text="عدد القطع"></asp:Label>*
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:TextBox ID="txtQty" MaxLength="10" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="ValDebit" runat="server" ControlToValidate="txtQty" Display="Dynamic"
                                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                ValidationGroup="1" Type="Currency">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtQty"
                                Display="Dynamic" ErrorMessage="يجب أدخال عدد القطع" ForeColor="Red" SetFocusOnError="True"
                                ValidationGroup="1">*</asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 150px;">
                            <asp:Label ID="Label27" runat="server" Text="وزن الشحنة"></asp:Label>*
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:TextBox ID="txtWeight" Text="" MaxLength="11" runat="server" AutoPostBack="True"
                                OnTextChanged="txtWeight_TextChanged"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtWeight"
                                Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                ValidationGroup="1" Type="Currency">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtWeight"
                                Display="Dynamic" ErrorMessage="يجب أدخال وزن الشحنة" ForeColor="Red" SetFocusOnError="True"
                                ValidationGroup="1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="Label19" runat="server" Text="السعر"></asp:Label>*
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:TextBox ID="txtPrice" Text="" Enabled="false" MaxLength="15" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 150px;">
                            <asp:Label ID="lblAccess1" runat="server" Text="الغرض من الشحنة"></asp:Label>
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:DropDownList ID="ddlUse" runat="server">
                                <asp:ListItem Value="1">تجاري</asp:ListItem>
                                <asp:ListItem Value="2">استخدام شخصي</asp:ListItem>
                                <asp:ListItem Value="3">هدية</asp:ListItem>
                                <asp:ListItem Value="4">عينة</asp:ListItem>
                                <asp:ListItem Value="5">إصلاح وإرجاع</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="Label40" runat="server" Text="عدد الشحنات"></asp:Label>*
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:TextBox ID="txtQty2" Text="1" MaxLength="15" AutoPostBack="True" OnTextChanged="txtWeight_TextChanged"
                                runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtQty2"
                                Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                ValidationGroup="1" Type="Currency">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtQty2"
                                Display="Dynamic" ErrorMessage="يجب أدخال عدد الشحنات" ForeColor="Red" SetFocusOnError="True"
                                ValidationGroup="1">*</asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 150px;">
                            <asp:Label ID="Label41" runat="server" Text="المبلغ"></asp:Label>
                        </td>
                        <td style="width: 300px;" colspan="2">
                            <asp:TextBox ID="txtTotal" ReadOnly="true" MaxLength="15" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="Label22" runat="server" Text="وصف الشحنة "></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtRemark1" MaxLength="200" runat="server" Width="550px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px;">
                            <asp:Label ID="Label29" runat="server" Text="ملاحظات"></asp:Label>
                        </td>
                        <td colspan="5">
                            <asp:TextBox ID="txtnote" MaxLength="200" runat="server" Width="550px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="DivMulti" runat="server">
                <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="true"
                    AutoGenerateColumns="False" DataKeyNames="FNo" Width="99.9%" EmptyDataText="لا توجد بيانات">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="م" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblFNo" runat="server" Text='<%# Bind("FNo") %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="50px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="وصف الشحنة" SortExpression="Name" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" MaxLength="200" Text='<%# Bind("Name") %>'></asp:TextBox>
                            </ItemTemplate>
                            <ControlStyle Width="500px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="العدد" SortExpression="Qty" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:TextBox ID="txtQty" Text='<%# Bind("Qty") %>' MaxLength="10" runat="server" onchange="makesum()" ></asp:TextBox>
                                <asp:CompareValidator ID="ValQty" runat="server" ControlToValidate="txtQty" ErrorMessage="يجب ان تكون القيمة رقمية"
                                    ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Type="Currency" ValidationGroup="1"
                                    Operator="DataTypeCheck">*</asp:CompareValidator>
                            </ItemTemplate>
                            <ControlStyle Width="100px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="السعر" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:TextBox ID="txtPrice" Text='<%# Bind("Price") %>' MaxLength="15" runat="server"
                                    onchange="makesum()"></asp:TextBox>
                                <asp:CompareValidator ID="ValAmount3" runat="server" ControlToValidate="txtPrice"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="lblTotal0" runat="server" Text="الأجمالي"></asp:Label>
                            </FooterTemplate>
                            <ControlStyle Width="100px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="القيمة" SortExpression="Total" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblTotall"  Text='<%# Bind("Total") %>' runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:Label ID="lblTotal2" runat="server" Text="<%# Total20 %>"></asp:Label>
                            </FooterTemplate>
                            <ControlStyle Width="100px"></ControlStyle>
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataRowStyle ForeColor="Red" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                    <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>
                    <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>
                    <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>
                    <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
                </asp:GridView>
            </div>
            <table width="99%" cellpadding="5px" dir="rtl">
                        <tr>
                            <td style="width: 150px;">
                                <asp:Label ID="Label46" runat="server" Text="كود الخصم"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="2">
                                 <asp:TextBox ID="txtDiscountTerm" MaxLength="20" runat="server"></asp:TextBox>
                                   <asp:ImageButton ID="BtnDiscountTerm" runat="server" ValidationGroup="550" ImageUrl="~/images/zoom_16.png"
                                                ToolTip="البحث عن بيانات كود الخصم" 
                                     onclick="BtnDiscountTerm_Click" />
                                            <asp:Label ID="lblErrDiscountTerm" runat="server" ForeColor="Red" Text=" "></asp:Label>
                            </td>
                            <td style="width: 150px;">
                                <asp:Label ID="Label47" runat="server" Text="الخصم"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="2">                             
                                <asp:TextBox ID="txtDiscount" Width="100px" ReadOnly="true" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px;">
                            </td>
                            <td style="width: 300px;" colspan="2">
                            </td>
                            <td style="width: 150px;">
                                <asp:Label ID="Label48" runat="server" Text="الصافي"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="2">                             
                                <asp:TextBox ID="txtNet" ReadOnly="true" Width="100px" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px;">
                            </td>
                            <td style="width: 300px;" colspan="2">
                            </td>
                            <td style="width: 150px;">
                                <asp:Label ID="LblTax" runat="server" Text="الضريبة 5%"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="2">                             
                                <asp:TextBox ID="txtTax" ReadOnly="true" Width="100px" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px;">
                            </td>
                            <td style="width: 300px;" colspan="2">
                            </td>
                            <td style="width: 150px;">
                                <asp:Label ID="Label50" runat="server" Text="الاجمالي شامل الضريبة"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="2">                             
                                <asp:TextBox ID="txtTotNet" Width="100px" ReadOnly="true" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                <tr>
                    <th align="right">
                        <asp:Label ID="Label17" runat="server" ForeColor="#800000" Font-Underline="true" 
                            Text="بيانات الدفع"></asp:Label>
                    </th>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label20" runat="server" Text="نقداً بمبلغ"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtCashAmount" MaxLength="15" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="ChkCashAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkCashAmount_CheckedChanged" />
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="CheckItem2"
                            ControlToValidate="txtCashAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن" ForeColor="Red"
                            SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCashAmount"
                            ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                            Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label30" runat="server" Text="شبكة بمبلغ"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtShabakaAmount" MaxLength="15" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="ChkShabakaAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkShabakaAmount_CheckedChanged" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="CheckItem3"
                            ControlToValidate="txtShabakaAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن"
                            ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                        <asp:CompareValidator ID="ValCashAmount2" runat="server" ControlToValidate="txtShabakaAmount"
                            ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                            Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label18" runat="server" Text="أجل فرع"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlSite" Width="275" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label21" runat="server" Text="المبلغ"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtSiteAmount" MaxLength="50" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="ChkSiteAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkSiteAmount_CheckedChanged" />
                        <asp:CustomValidator ID="ValSiteAmount1" runat="server" ClientValidationFunction="CheckItem1"
                            ControlToValidate="txtSiteAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن" ForeColor="Red"
                            SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                        <asp:CompareValidator ID="ValSiteAmount2" runat="server" ControlToValidate="txtSiteAmount"
                            ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                            Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label44" runat="server" Text="على حساب العميل"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:DropDownList ID="ddlCustomers" Width="275" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label45" runat="server" Text="المبلغ"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtCustomerAmount" MaxLength="50" runat="server"></asp:TextBox>
                        <asp:CheckBox ID="ChkCustomerAmount" runat="server" AutoPostBack="True" oncheckedchanged="ChkCustomerAmount_CheckedChanged" />
                        <asp:CustomValidator ID="ValCustomerAmount1" runat="server" ClientValidationFunction="CheckItem4"
                            ControlToValidate="txtCustomerAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن"
                            ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                        <asp:CompareValidator ID="ValCustomerAmount2" runat="server" ControlToValidate="txtCustomerAmount"
                            ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                            Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="Label31" runat="server" Text="المستخدم"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtUserName" Width="285px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                            CssClass="MouseStop" Enabled="false"></asp:TextBox>
                    </td>
                    <td style="width: 150px;">
                        <asp:Label ID="Label32" runat="server" Text="بتاريخ"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtUserDate" Width="150px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                            CssClass="MouseStop" Enabled="false"> </asp:TextBox>
                        <asp:Label ID="Label35" runat="server" Text="* حقول الزامية"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px;">
                        <asp:Label ID="lblReason" Visible="false" runat="server" Text="سبب التعديل/الغاء"></asp:Label>
                    </td>
                    <td style="width: 300px;" colspan="2">
                        <asp:TextBox ID="txtReason" Width="280px" Visible="false" runat="server" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValReason" Enabled="false" runat="server" ControlToValidate="txtReason"
                            ErrorMessage="يجب إدخال سبب التعديل/الالغاء" ForeColor="Red" Display="Dynamic"
                            SetFocusOnError="True" ValidationGroup="10">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 150px;">
                    </td>
                    <td style="width: 300px;" colspan="2">
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="5">
                        <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="BtnPrint2" runat="server" OnClick="BtnPrint2_Click">طباعة الشروط</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <center>
                <br />
                <div class="DivButtons" style="width: 95%">
                    <table id="Table2" dir="rtl" width="100%" cellpadding="0" cellspacing="0">
                        <tr align="center">
                            <td style="width: 150px;">
                                &nbsp;
                            </td>
                            <td style="width: 400px;">
                                <asp:ImageButton ID="BtnNew" runat="server" AlternateText="جديد" CommandName="New"
                                    ImageUrl="~/images/insource_642.png" ToolTip="أضافة سند جديد" ValidationGroup="1"
                                    OnClientClick='return confirm("هل أنت متاكد من حفظ بيانات السند؟")' OnClick="BtnNew_Click" />
                                <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="تعديل" CommandName="Edit"
                                    ImageUrl="~/images/draw_pen_642.png" ToolTip="تعديل بيانات السند" Width="64px"
                                    ValidationGroup="1" OnClick="BtnEdit_Click" />
                                <asp:ImageButton ID="BtnClear" runat="server" AlternateText="مسح" CommandName="Clear"
                                    ImageUrl="~/images/erasure_642.png" ToolTip="مسح خانات الشاشة" OnClick="BtnClear_Click" />
                                <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="إلغاء" CommandName="Delete"
                                    ImageUrl="~/images/cut_642.png" ToolTip="إلغاء بيانات السند" OnClientClick='return confirm("هل أنت متاكد من الغاء بيانات السند؟")'
                                    OnClick="BtnDelete_Click" />
                                <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="بحث" CommandName="Find"
                                    ImageUrl="~/images/binoculars_642.png" ToolTip="البحث عن بيانات السند" OnClick="BtnSearch_Click" />
                                <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="طباعة" CommandName="Print"
                                    ImageUrl="~/images/print_64A.png" ValidationGroup="1" ToolTip="طباعة السند" OnClick="BtnPrint_Click" />
                            </td>
                            <td id="td1" runat="server" style="width: 200px; text-align: right">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem Selected="True" Value="0">نسخة السائق</asp:ListItem>
                                    <asp:ListItem Value="1">نسخة العميل</asp:ListItem>
                                    <asp:ListItem Value="2">نسخة الفرع</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                &nbsp;
                                <asp:CheckBox ID="ChkDoubleSide" Text="طباعة وجهين" Checked="true" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
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
                    <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333" ShowHeader="False"
                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo" Width="99%" OnRowDeleting="grdAttach_RowDeleting">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
        </fieldset>
        <br />
    </div>
</asp:Content>