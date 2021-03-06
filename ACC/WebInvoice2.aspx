<%@ Page Title="أتفاقية شحن - فاتورة" Language="C#" MasterPageFile="~/MySite.Master"
    AutoEventWireup="true" CodeBehind="WebInvoice2.aspx.cs" Inherits="ACC.WebInvoice2"
    Culture="ar-EG" UICulture="ar-EG" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">

        function CheckImg(senderID) {
            var sender = document.getElementById(senderID);
            var HImgAccess = document.getElementById('<%=HImgAccess.ClientID %>');
            var s = HImgAccess.value;
            var s1 = "";
            var pos = parseInt(senderID.replace("ContentPlaceHolder1_ImgAccess", "")) - 1;
            if (sender) {
                if (sender.src.indexOf("True") >= 0) {
                    sender.src = sender.src.replace("True", "False");
                    s1 = s.substring(0,pos) + "0" + s.substring(pos+1,s.length);
                    }
                else {
                    sender.src = sender.src.replace("False", "True");
                    s1 = s.substring(0, pos) + "1" + s.substring(pos + 1, s.length);
                }
                HImgAccess.value = s1;
            }
        }

        function CheckImg2(senderID) {
            var sender = document.getElementById(senderID);
            var HImgAccess = document.getElementById('<%=HImgS.ClientID %>');
            var s = HImgAccess.value;
            var s1 = "";
            var pos = parseInt(senderID.replace("ContentPlaceHolder1_ImgS", "")) - 1;
            if (sender) {
                if (sender.src.indexOf("True") >= 0) {
                    sender.src = sender.src.replace("True", "False");
                    s1 = s.substring(0, pos) + "0" + s.substring(pos + 1, s.length);
                }
                else {
                    sender.src = sender.src.replace("False", "True");
                    s1 = s.substring(0, pos) + "1" + s.substring(pos + 1, s.length);
                }
                HImgAccess.value = s1;
            }
        }

        function MakeJSum(sender, args) {
            var total = document.getElementById('<%=txtTotal.ClientID %>');
            var Price0 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_0');
            var Price1 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_1');
            var Price2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_2');
            var Price3 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_3');
            var Price4 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_4');
            var Price5 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_5');
            var Price6 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_6');
            var Price7 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_7');
            var Price8 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_8');
            var Price9 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_9');

            var Price20 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price21 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price22 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price23 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price24 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price25 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price26 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price27 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price28 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Price29 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            
            if (total) {
                total.value = '0';
                if (Price0 && Price20) {
                    if (Price20.value == '') {
                        Price0.value = '0';
                   }
                    total.value = (parseFloat(total.value) + parseFloat(Price0.value)).toString();                   
                }
                if (Price1 && Price21) {
                    if (Price21.value == '') {
                        Price1.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price1.value)).toString();
                }
                if (Price2 && Price22) {
                    if (Price22.value == '') {
                        Price2.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price2.value)).toString();
                }
                if (Price3 && Price23) {
                    if (Price23.value == '') {
                        Price3.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price3.value)).toString();
                }
                if (Price4 && Price24) {
                    if (Price24.value == '') {
                        Price4.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price4.value)).toString();
                }
                if (Price5 && Price25) {
                    if (Price25.value == '') {
                        Price5.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price5.value)).toString();
                }
                if (Price6 && Price26) {
                    if (Price26.value == '') {
                        Price6.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price6.value)).toString();
                }
                if (Price7 && Price27) {
                    if (Price27.value == '') {
                        Price7.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price7.value)).toString();
                }
                if (Price8 && Price28) {
                    if (Price28.value == '') {
                        Price8.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price8.value)).toString();
                }
                if (Price9 && Price29) {
                    if (Price29.value == '') {
                        Price9.value = '0';
                    }
                    total.value = (parseFloat(total.value) + parseFloat(Price9.value)).toString();
                }
            }
            return false;
        }


        function CheckItemO(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_0');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO0(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_0');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_0');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO1(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_1');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_1');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO2(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_2');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_2');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO3(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_3');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_3');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO4(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_4');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_4');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO5(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_5');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_5');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO6(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_6');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_6');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO7(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_7');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_7');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO8(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_8');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_8');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItemO9(sender, args) {
            var Amount2 = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice2_9');
            var Amount = document.getElementById('ContentPlaceHolder1_grdCodes_txtPrice_9');
            args.IsValid = false;
            if (Amount && Amount2) {
                if (parseFloat(Amount2.value) != 0 && parseFloat(Amount.value) < parseFloat(Amount2.value)) {
                    return
                }
            }
            args.IsValid = true;
            return
        }

        function CheckItem1(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtTotal.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && SiteAmount && CustomerAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(SiteAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(SiteAmount.value) + parseFloat(CustomerAmount.value)) {
                    return
                }

            }
            args.IsValid = true;
            return
        }

        function CheckItem2(sender, args) {
            var CashAmount = document.getElementById('<%=txtCashAmount.ClientID %>');
            var SiteAmount = document.getElementById('<%=txtSiteAmount.ClientID %>');
            var CustomerAmount = document.getElementById('<%=txtCustomerAmount.ClientID %>');
            var Amount = document.getElementById('<%=txtTotal.ClientID %>');
            args.IsValid = false;
            if (Amount && CashAmount && CustomerAmount && SiteAmount) {
                if (!CashAmount.value) CashAmount.value = '0';
                if (!SiteAmount.value) SiteAmount.value = '0';
                if (!CustomerAmount.value) CustomerAmount.value = '0';
                if (!Amount.value) Amount.value = '0';
                if (parseFloat(CustomerAmount.value) != 0 && parseFloat(Amount.value) > parseFloat(CashAmount.value) + parseFloat(CustomerAmount.value) + parseFloat(SiteAmount.value)) {
                    return
                }

            }
            args.IsValid = true;
            return
        }



    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="ColorRounded4Corners" style="width: 99.9%">
            <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 99.8%;
                border: solid 2px #800000">
                <legend align="right" style="font-size: 18px; color: #800000; text-align: center;"><b>
                    <asp:Label ID="lblHead" runat="server" Text="[ أتفاقية شحن - فاتورة ]"></asp:Label>
                </b></legend>
                <center>
                    <table width="99.9%" cellpadding="3" cellspacing="0">
                        <tr>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="Label1" runat="server" Text="رقم الفاتورة"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 300px">
                                <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:Label ID="lblBranch" runat="server" Text="Label"></asp:Label>
                                <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="البحث عن بيانات فاتورة شحن" OnClick="BtnFind_Click" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                    Display="Dynamic" ErrorMessage="يجب أختيار رقم الفاتورة" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="right" colspan="2">
                                <asp:RadioButtonList ID="rdoVouType" runat="server" RepeatColumns="2" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="ddlPlaceofLoading_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">ذهاب</asp:ListItem>
                                    <asp:ListItem Value="1">ذهاب وعوده</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td align="right" colspan="2">
                                <asp:CheckBox ID="ChkReturnInv" runat="server" AutoPostBack="True" 
                                    oncheckedchanged="ChkReturnInv_CheckedChanged" Text="عوده" />
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtOVouNo" Visible="false" MaxLength="20" Width="100px"  placeholder="فاتورة الذهاب" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind2" runat="server" ValidationGroup="55" 
                                    ImageUrl="~/images/zoom_16.png" Visible="false"
                                    ToolTip="البحث عن بيانات فاتورة شحن" OnClick="BtnFind2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label4" runat="server" Text="التاريخ"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtHDate" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHDate"
                                    Display="Dynamic" ErrorMessage="يجب أختيار تاريخ الفاتورة" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>هـ
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label7" runat="server" Text="الموافق"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtGDate" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGDate"
                                    Display="Dynamic" ErrorMessage="يجب أختيار تاريخ الفاتورة" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtGDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>م&nbsp;
                                <asp:Label ID="LblFTime" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label6" runat="server" Text="أسم المرسل"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtName" MaxLength="100" runat="server" Width="275px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtName"
                                    Display="Dynamic" ErrorMessage="يجب إدخال أسم المرسل" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label9" runat="server" Text="رقم الهوية"></asp:Label>
                            </td>
                            <td align="right" colspan="2">
                                <asp:TextBox ID="txtIDNo" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                            <td align="right">
                                <asp:RadioButtonList ID="rdoIDType" runat="server" RepeatColumns="2">
                                    <asp:ListItem Selected="True" Value="0">الهوية</asp:ListItem>
                                    <asp:ListItem Value="1">بطاقة</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label10" runat="server" Text="مصدرها"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px">
                                <asp:TextBox ID="txtIDFrom" MaxLength="50" runat="server" Width="275px"></asp:TextBox>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label11" runat="server" Text="تاريخها"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtIdDate" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtIdDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label3" runat="server" Text="العنوان"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtAddress" MaxLength="200" runat="server" Width="275px"></asp:TextBox>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label28" runat="server" Text="رقم الجوال"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtMobileNo" MaxLength="20" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label2" runat="server" Text="مكان الشحن"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:DropDownList ID="ddlPlaceofLoading" Width="280" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="ddlPlaceofLoading_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label13" runat="server" Text="جهة الترحيل"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlDestination" Width="280" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="ddlPlaceofLoading_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="Label33" runat="server" Text="أسم المستلم"></asp:Label></td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtRecName" Width="275px" MaxLength="100" runat="server"></asp:TextBox></td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label5" runat="server" Text="عنوان المستلم"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtRecAddress" Width="275px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="lblChqNo" runat="server" Text="رقم الجوال"></asp:Label>*
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtRecMobileNo" MaxLength="20" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRecMobileNo"
                                    Display="Dynamic" ErrorMessage="يجب أختيار رقم جوال المستلم" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>

                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label31" runat="server" Text="عدد السيارات"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlQty" Width="50px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlQty_SelectedIndexChanged">
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
                                </asp:DropDownList>&nbsp;&nbsp;
                                <asp:Button ID="BtnCopy" runat="server" Text="نسـخ" onclick="BtnCopy_Click" />
                            
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333"
                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo" 
                        Width="99.9%" EmptyDataText="لا توجد بيانات">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="نوع السيارة" SortExpression="CarType" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlCarType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCarType_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <ControlStyle Width="100px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="الطراز" SortExpression="Model" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlModel" runat="server"  AutoPostBack="true" OnSelectedIndexChanged="ddlModel_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </ItemTemplate>
                                <ControlStyle Width="180px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="الموديل" SortExpression="Brand" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtBrand" Text='<%# Bind("Brand") %>' MaxLength="11" runat="server"></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle Width="100px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="رقم اللوحه" SortExpression="PlateNo" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtPlateNo" Text='<%# Bind("PlateNo") %>' MaxLength="10" runat="server"></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle Width="100px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="رقم الهيكل" SortExpression="ChassisNo" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtChassisNo" Text='<%# Bind("ChassisNo") %>' MaxLength="15" runat="server"></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle Width="100px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="اللون" SortExpression="Color" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtColor" Text='<%# Bind("Color") %>' MaxLength="15" runat="server"></asp:TextBox>
                                </ItemTemplate>
                                <ControlStyle Width="100px"></ControlStyle>
                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="السعر" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtPrice" Text='<%# Bind("Price") %>' MaxLength="15" runat="server"></asp:TextBox>
                                    <asp:HiddenField ID="txtPrice2" runat="server" />
                                <asp:RequiredFieldValidator ID="ValAmount1" runat="server" ControlToValidate="txtPrice"
                                    Display="Dynamic" ErrorMessage="يجب أدخال قيمة الشحن" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="ValAmount2" runat="server" ClientValidationFunction="CheckItemO"
                                    ControlToValidate="txtPrice" ErrorMessage="لقد تجاوزت الحد الادنى للسعر" ForeColor="Red"
                                    SetFocusOnError="True" Display="Dynamic" ValidationGroup="1" 
                                        onservervalidate="ValAmount2_ServerValidate">تجاوزت</asp:CustomValidator>
                                <asp:CompareValidator ID="ValAmount3" runat="server" ControlToValidate="txtPrice"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                                </ItemTemplate>
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
                    <table width="99.9%" cellpadding="3" cellspacing="0">                     
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label20" runat="server" Text="نقداً بمبلغ"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:TextBox ID="txtCashAmount" MaxLength="15" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="ValCashAmount2" runat="server" ControlToValidate="txtCashAmount"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label32" runat="server" Text="الاجمالي"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="2">                             
                                <asp:TextBox ID="txtTotal" ReadOnly="true" MaxLength="15" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label17" runat="server" Text="أجل فرع"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:DropDownList ID="ddlSite" Width="275" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label23" runat="server" Text="المبلغ"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="2">
                                <asp:TextBox ID="txtSiteAmount" MaxLength="50" runat="server"></asp:TextBox>
                                <asp:CustomValidator ID="ValSiteAmount1" runat="server" ClientValidationFunction="CheckItem1"
                                    ControlToValidate="txtSiteAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن" ForeColor="Red"
                                    SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                                <asp:CompareValidator ID="ValSiteAmount2" runat="server" ControlToValidate="txtSiteAmount"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px;">
                                <asp:Label ID="Label24" runat="server" Text="على حساب العميل"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;">
                                <asp:DropDownList ID="ddlCustomers" Width="275" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td align="center" style="width: 175px;">
                                <asp:Label ID="Label25" runat="server" Text="المبلغ"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px;" colspan="2">
                                <asp:TextBox ID="txtCustomerAmount" MaxLength="50" runat="server"></asp:TextBox>
                                <asp:CustomValidator ID="ValCustomerAmount1" runat="server" ClientValidationFunction="CheckItem2"
                                    ControlToValidate="txtCustomerAmount" ErrorMessage="المبلغ لا يغطي قيمة الشحن"
                                    ForeColor="Red" SetFocusOnError="True" Display="Dynamic" ValidationGroup="1">المبلغ غير كاف</asp:CustomValidator>
                                <asp:CompareValidator ID="ValCustomerAmount2" runat="server" ControlToValidate="txtCustomerAmount"
                                    ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                                    Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                    </table>
                    <div style="background-image: url('../images/Car1.jpg');">
                        <table>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    <img  ID="ImgS1" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS1" runat="server" Text="1"></asp:Label>
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    <img  ID="ImgS2" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS2" runat="server" Text="2"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                    <img  ID="ImgS3" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS3" runat="server" Text="3"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                    <img  ID="ImgS4" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS4" runat="server" Text="4"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS5" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS5" runat="server" Text="5"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS6" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS6" runat="server" Text="6"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    <img  ID="ImgS7" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS7" runat="server" Text="7"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS8" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS8" runat="server" Text="8"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                    <img  ID="ImgS9" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS9" runat="server" Text="9"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                    <img  ID="ImgS10" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS10" runat="server" Text="10"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td align="left" style="width: 75px;">
                                    <img  ID="ImgS11" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS11" runat="server" Text="11"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS12" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS12" runat="server" Text="12"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                    <img  ID="ImgS13" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS13" runat="server" Text="13"></asp:Label>
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                    <img  ID="ImgS14" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS14" runat="server" Text="14"></asp:Label>
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                    <img  ID="ImgS15" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS15" runat="server" Text="15"></asp:Label>
                                    &nbsp;
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    &nbsp;&nbsp;
                                    <img  ID="ImgS16" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS16" runat="server" Text="16"></asp:Label>
                                </td>
                                <td align="left" style="width: 75px;">
                                    <img  ID="ImgS17" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS17" runat="server" Text="17"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                    <img  ID="ImgS18" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS18" runat="server" Text="18"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                    <img  ID="ImgS19" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS19" runat="server" Text="19"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS20" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS20" runat="server" Text="20"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS21" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS21" runat="server" Text="21"></asp:Label>
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS22" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS22" runat="server" Text="22"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    <img  ID="ImgS23" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS23" runat="server" Text="23"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px; text-align: right;">
                                    <img  ID="ImgS24" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS24" runat="server" Text="24"></asp:Label>
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    <img  ID="ImgS25" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS25" runat="server" Text="25"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;&nbsp;
                                    <img  ID="ImgS26" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS26" runat="server" Text="26"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS27" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS27" runat="server" Text="27"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS28" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS28" runat="server" Text="28"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td align="left" style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px; text-align: right;">
                                    <img  ID="ImgS29" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS29" runat="server" Text="29"></asp:Label>
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    <img  ID="ImgS30" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS30" runat="server" Text="30"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;&nbsp;
                                    <img  ID="ImgS31" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS31" runat="server" Text="31"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS32" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS32" runat="server" Text="32"></asp:Label>
                                </td>
                                <td align="left" style="width: 75px;">
                                    <img  ID="ImgS33" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS33" runat="server" Text="33"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px; text-align: right;">
                                    <img  ID="ImgS34" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS34" runat="server" Text="34"></asp:Label>
                                </td>
                                <td style="width: 75px; text-align: left;">
                                    <img  ID="ImgS35" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS35" runat="server" Text="35"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;&nbsp;
                                    <img  ID="ImgS36" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS36" runat="server" Text="36"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS37" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS37" runat="server" Text="37"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    <img  ID="ImgS38" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg2(this.id);"/>
                                    <asp:Label ID="lblS38" runat="server" Text="38"></asp:Label>
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                                <td style="width: 75px;">
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                    <table width="99.9%" cellpadding="3" cellspacing="0">
                        <tr>
                            <td align="right" style="width: 225px">
                                <img  id="ImgAccess1" alt="" src="~/images/True.gif" runat="server" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess1" runat="server" Text="الاستمارة"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess1" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img  id="ImgAccess2" alt="" src="~/images/True.gif" runat="server" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess2" runat="server" Text="الايريال"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess2" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img  id="ImgAccess3" alt="" src="~/images/True.gif" runat="server" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess3" runat="server" Text="الكنداسة"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess3" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img  id="ImgAccess4" alt="" src="~/images/True.gif" runat="server"  onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess4" runat="server" Text="راديو ومسجل"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess4" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess5" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess5" runat="server" Text="سقف السيارة الخارجي"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess5" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess6" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess6" runat="server" Text="الاطار الاحتياطي"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess6" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess7" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess7" runat="server" Text="مرآه جانبية يمين"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess7" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess8" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess8" runat="server" Text="مرآه جانبية يسار"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess8" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess9" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess9" runat="server" Text="طاسات كفرات أمامية يمين"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess9" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess10" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess10" runat="server" Text="طاسات كفرات أمامية يسار"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess10" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess11" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess11" runat="server" Text="لوحات أمامية"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess11" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess12" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess12" runat="server" Text="لوحات خلفية"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess12" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess13" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess13" runat="server" Text="طاسات كفرات خلفية يمين"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess13" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess14" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess14" runat="server" Text="طاسات كفرات خلفية يسار"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess14" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess15" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess15" runat="server" Text="أنوار أمامية يمين"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess15" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess16" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess16" runat="server" Text="أنوار أمامية يسار"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess16" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess17" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess17" runat="server" Text="زجاج أمامي"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess17" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 225px">
                                <img ID="ImgAccess18" runat="server" src="~/images/True.gif" onclick="Javascript:CheckImg(this.id);"/>
                                <asp:Label ID="lblAccess18" runat="server" Text="زجاج خلفي"></asp:Label>
                            </td>
                            <td align="right" style="width: 225px">
                                <asp:TextBox ID="txtAccess18" Width="200px" MaxLength="100" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table width="99.9%" cellpadding="3" cellspacing="0">
                        <tr>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="Label22" runat="server" Text="ملاحظات أخرى 1"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px">
                                <asp:TextBox ID="txtRemark1" MaxLength="100" runat="server" Width="275px"></asp:TextBox>
                            </td>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="Label26" runat="server" Text="2"></asp:Label>
                            </td>
                            <td align="right" style="width: 300px">
                                <asp:TextBox ID="txtRemark2" MaxLength="100" runat="server" Width="275px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 150px">
                                <asp:Label ID="Label29" runat="server" Text="المرفقات"></asp:Label>
                            </td>
                            <td align="right" colspan="3">
                                <asp:TextBox ID="txtAttached" MaxLength="200" runat="server" Width="735px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <table id="Table2" width="100%" cellpadding="0" cellspacing="0">
                        <tr align="right">
                            <td style="width: 70px;">
                                <asp:Label ID="Label14" runat="server" Text="المستخدم"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtUserName" Width="300px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                    Enabled="false"></asp:TextBox>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label15" runat="server" Text="بتاريخ"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtUserDate" Width="150px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                    Enabled="false"> </asp:TextBox>
                                <asp:Label ID="Label27" runat="server" Text="* حقول الزامية"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="4">
                                <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                                <div style="text-align: left; padding-left: 10px">
                                    <asp:LinkButton ID="BtnPrint2" runat="server" OnClick="BtnPrint2_Click">طباعة الشروط</asp:LinkButton>
                                </div>
                            </td>
                        </tr>
                        <tr align="right">
                            <td colspan="4" style="text-align: center">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="4" style="width: 100%;">
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
                        <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333"
                            ShowHeader="False" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                            Width="99%" OnRowDeleting="grdAttach_RowDeleting">
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
        </div>
        <asp:HiddenField ID="HImgAccess" Value = "111111111111111111" runat="server" />
        <asp:HiddenField ID="HImgS" Value = "11111111111111111111111111111111111111" runat="server" />
    </center>
</asp:Content>
