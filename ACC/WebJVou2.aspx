<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    Culture="ar-EG" UICulture="ar-EG" MaintainScrollPositionOnPostback="true" CodeBehind="WebJVou2.aspx.cs"
    Inherits="ACC.WebJVou2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function pageLoad() {
            $("input[name*='grdCodes'],select[name*='grdCodes']").change(function (event) {
                    var res = event.target.id.split("_");
                    $(this).addClass('ChangedText');
            });
            SetMyStyle();
        }
             
       function ace1_itemSelected(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCode');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_txtName');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }

        function ace00_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var x1 = str.split('_');
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCode0_'+ x1[3]);
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_txtName0_'+ x1[3]);
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }


        function ace20_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var x1 = str.split('_');
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCode2_' + x1[3]);
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_txtName2_' + x1[3]);
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }

        function ace22_itemSelected(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCode2');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_txtName2');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            ace2Value.value = x[1];
            return false;
        }

        function car1_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var ace1Value = $get(str);
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            return false;
        }

        function ace2_itemSelected(sender, e) {
            var str = sender.get_element().id;
            var x1 = str.split('_');
            var str2 = 'ContentPlaceHolder1_grdCodes_txtName2_' + x1[3];
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

        function ace1_itemSelectedArea(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtArea');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_lblAreaCode');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace2Value.value = x[0];
            return false;
        }

        function ace1_itemSelectedCostAcc(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtCostAcc');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_lblCostAccCode');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace2Value.value = x[0];
            return false;
        }

        function ace1_itemSelectedEmp(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_grdCodes_txtEmp');
            var ace2Value = $get('ContentPlaceHolder1_grdCodes_lblEmpCode');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[1];
            ace2Value.value = x[0];
            return false;
        }

        function Validate() {
            var isValid = false;
            isValid = Page_ClientValidate('1');
            if (isValid) {
                isValid = Page_ClientValidate('10');
            }
            return isValid;
        }

        function Validate2() {
            var isValid = false;
            isValid = Page_ClientValidate('1');
            if (isValid) {
                isValid = Page_ClientValidate('10');
            }
            return confirm("هل أنت متاكد من الغاء بيانات قيد اليومية؟");
        }        

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="ColorRounded4Corners" style="width: 99.8%">
            <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 99.5%;
                border: solid 2px #800000">
                <legend align="right" style="font-size: 18px; color: #800000; text-align: center;"><b>
                    [ قيد اليومية ]</b></legend>
                <center>
                    <table width="99%" cellpadding="3" cellspacing="0">
                        <tr>
                            <td align="right" style="width: 15%;">
                                <asp:Label ID="Label1" runat="server" Text="رقم القيد"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 20%;">
                                <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                    Display="Dynamic" ErrorMessage="يجب أختيار رقم القيد" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                            <td align="right" style="width: 5%;">
                            </td>
                            <td align="center" style="width: 10%;">
                                <asp:Label ID="Label2" runat="server" Text="التاريخ"></asp:Label>
                                *
                            </td>
                            <td align="right" style="width: 20%;">
                                <asp:TextBox ID="txtVouDate" MaxLength="10" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                                    Display="Dynamic" ErrorMessage="يجب أختيار تاريخ القيد" ForeColor="Red" SetFocusOnError="True"
                                    ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                            </td>
                            <td style="width: 5%;">
                            </td>
                            <td style="width: 25%;" colspan="2" align="left" >
                               <asp:TextBox ID="txtSearch" MaxLength="10" Width="100px" placeholder="بحث" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="البحث عن بيانات قيد يومية" OnClick="BtnFind_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" style="width: 15%;">
                                <asp:LinkButton ID="BtnRecovery" runat="server" onclick="BtnRecovery_Click">الاسترداد التلقائي</asp:LinkButton>
                            </td>
                            <td align="right" style="width: 20%;">
                                &nbsp;</td>
                            <td align="right" style="width: 5%;">
                            </td>
                            <td align="center" style="width: 10%;">
                            </td>
                            <td align="right" style="width: 20%;">
                            </td>
                            <td style="width: 5%;">
                            </td>
                            <td style="width: 15%;">
                                <asp:Label ID="Label9" runat="server" Text="السجلات/الصفحة"></asp:Label>
                            </td>
                            <td style="width: 10%;">
                                <asp:DropDownList ID="ddlRecordsPerPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRecordsPerPage_SelectedIndexChanged">
                                    <asp:ListItem Value="20">25</asp:ListItem>
                                    <asp:ListItem Value="50">50</asp:ListItem>
                                    <asp:ListItem Value="100">100</asp:ListItem>
                                    <asp:ListItem Value="200">200</asp:ListItem>
                                    <asp:ListItem Value="500">500</asp:ListItem>
                                    <asp:ListItem Value="1000">1000</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; overflow: none; overflow-x: auto; border: 1px solid #800000;">
                        <asp:GridView ID="grdCodes" runat="server" CellPadding="4" Width="99.95%" ForeColor="#333333"
                            ShowFooter="True" ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False"
                            DataKeyNames="sno" PageSize="25" OnRowCommand="grdCodes_RowCommand"
                            OnPageIndexChanging="grdCodes_PageIndexChanging" OnRowCancelingEdit="grdCodes_RowCancelingEdit"
                            OnRowUpdating="grdCodes_RowUpdating" OnRowDeleting="grdCodes_RowDeleting" OnSelectedIndexChanging="grdCodes_SelectedIndexChanging"
                            OnRowEditing="grdCodes_RowEditing" 
                            onselectedindexchanged="grdCodes_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="تسلسل" SortExpression="sno" ItemStyle-HorizontalAlign="Center">                               
                                    <ItemTemplate>
                                        <asp:Label ID="lblSNo" Text='<%# Eval("SNo") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="lblSNo2" Text='<%# Eval("SNo") %>' runat="server"></asp:Label>
                                    </EditItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 40px">
                                            <asp:TextBox ID="txtFNo" placeholder="تسلسل" MaxLength="4" runat="server" Width="35px" />
                                        </div>
                                    </FooterTemplate>
                                    <ControlStyle Width="40px" />
                                    <ItemStyle HorizontalAlign="Center" Width="40px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="مدين" SortExpression="Debit" ItemStyle-HorizontalAlign="Center">                               
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtDebit2" Text='<%# Bind("Debit") %>' MaxLength="15" runat="server"
                                            Width="100px" />
                                        <asp:CompareValidator ID="ValDebit2" runat="server" ControlToValidate="txtDebit2"
                                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                            Type="Currency">*</asp:CompareValidator>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 110px">
                                            <asp:TextBox ID="txtDebit" MaxLength="15" runat="server" Width="100px" />
                                            <asp:CompareValidator ID="ValDebit" runat="server" ControlToValidate="txtDebit" Display="Dynamic"
                                                ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                                Type="Currency">*</asp:CompareValidator>
                                        </div>
                                    </FooterTemplate>
                                    <ControlStyle Width="110px" />
                                    <ItemStyle HorizontalAlign="Center" Width="110px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="دائن" SortExpression="Credit" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCredit2" Text='<%# Bind("Credit") %>' MaxLength="15" runat="server"
                                            Width="100px" />
                                        <asp:CompareValidator ID="ValCredit2" runat="server" ControlToValidate="txtCredit2"
                                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                            Type="Currency">*</asp:CompareValidator>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 110px">
                                            <asp:TextBox ID="txtCredit" runat="server" MaxLength="15" Width="100px" />
                                            <asp:CompareValidator ID="ValCredit" runat="server" ControlToValidate="txtCredit"
                                                Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                                                Type="Currency">*</asp:CompareValidator>
                                        </div>
                                    </FooterTemplate>
                                    <ControlStyle Width="110px" />
                                    <ItemStyle HorizontalAlign="Center" Width="110px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="كود الحساب" SortExpression="Code" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtCode2" Text='<%# Bind("Code") %>' runat="server" Width="100%" />
                                        <ajax:AutoCompleteExtender ID="AutoCompleteExtender02" runat="server" TargetControlID="txtCode2"
                                            ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList" OnClientItemSelected="ace2_itemSelected"
                                            MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                            CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 100px">
                                            <asp:TextBox ID="txtCode" runat="server" Width="100%" autocomplete="off" />
                                                <ajax:AutoCompleteExtender ID="AutoCompleteExtender03" runat="server" TargetControlID="txtCode"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList" OnClientItemSelected="ace1_itemSelected"
                                                MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                        </div>
                                    </FooterTemplate>
                                    <ControlStyle Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="أسم الحساب/شرح القيد/المستند" SortExpression="Name"
                                    ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtName2" Text='<%# Bind("Name") %>' runat="server" Width="100%" />
                                            <ajax:AutoCompleteExtender ID="AutoCompleteName2" runat="server" TargetControlID="txtName2"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList2" MinimumPrefixLength="1"
                                                OnClientItemSelected="ace20_itemSelected" CompletionInterval="500" EnableCaching="true"
                                                CompletionSetCount="12" CompletionListCssClass="autocomplete_completionListElement1"
                                                CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                        <asp:TextBox ID="txtRemark2" Text='<%# Bind("Remark") %>' MaxLength="200" runat="server" Width="100%" />
                                        <asp:TextBox ID="txtInvNo2" Text='<%# Bind("InvNo") %>' MaxLength="15" runat="server" Width="100%" />
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 300px">
                                            <asp:TextBox ID="txtName" placeholder="أدخل اسم الحساب" runat="server" Width="100%" autocomplete="off" />
                                            <ajax:AutoCompleteExtender ID="AutoCompleteName" runat="server" TargetControlID="txtName"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList2" MinimumPrefixLength="1"
                                                OnClientItemSelected="ace1_itemSelected" CompletionInterval="500" EnableCaching="true"
                                                CompletionSetCount="12" CompletionListCssClass="autocomplete_completionListElement1"
                                                CompletionListItemCssClass="autocomplete_listItem" CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                            <asp:TextBox ID="txtRemark" placeholder="أدخل شرح القيد" runat="server" Width="100%" />
                                            <asp:TextBox ID="txtInvNo" placeholder="أدخل رقم المستند" runat="server" MaxLength="15" Width="100%" />
                                        </div>
                                    </FooterTemplate>
                                    <ControlStyle Width="300px" />
                                    <ItemStyle HorizontalAlign="Center" Width="300px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="التوجية" SortExpression="CostCenter" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <div style="width: 150px; display: block; float: right;">
                                            <asp:DropDownList ID="ddlArea" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlArea_Init">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlCostCenter" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlCostCenter_Init">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlProject" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlProject_Init">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlCostAcc" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlCostAcc_Init">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlEmp" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlEmp_Init">
                                             </asp:DropDownList>
                                            <%--<asp:DropDownList ID="ddlCarNo" EnableViewState="false" Width="99%" runat="server"
                                                OnInit="ddlCarNo_Init"></asp:DropDownList>--%>
                                            <asp:TextBox ID="txtCarNo" runat="server" Width="99%" placeholder="ادخل رقم اللوحة"  autocomplete="off" />
                                            <ajax:AutoCompleteExtender ID="AutoCompleteCarNo" runat="server" TargetControlID="txtCarNo"
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionCars2" OnClientItemSelected="car1_itemSelected"
                                                MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />                                          
                                        </div>
                                     </ItemTemplate>
                                    <FooterTemplate>
                                        <div style="width: 150px">
                                            <asp:DropDownList ID="ddlArea2" Width="99%" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlCostCenter2" Width="99%" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlProject2" Width="99%" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlCostAcc2" Width="99%" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlEmp2" Width="99%" runat="server">
                                            </asp:DropDownList>
                                           <%-- <asp:DropDownList ID="ddlCarNo2" Width="99%" runat="server">
                                            </asp:DropDownList>--%>
                                             <asp:TextBox ID="txtCarNo2" runat="server" placeholder="ادخل رقم اللوحة" Width="150px" autocomplete="off" />
                                            <ajax:AutoCompleteExtender ID="AutoCompleteCarNo2" runat="server" TargetControlID="txtCarNo2" 
                                                ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionCars2" OnClientItemSelected="car1_itemSelected"
                                                MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                                CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />                                            
                                        </div>
                                    </FooterTemplate>
                                    <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="الغاء البند" ValidationGroup="1"
                                            ImageUrl="~/images/cross.png" OnClientClick='return confirm("هل أنت متاكد من الغاء هذا البند؟")' />
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:ImageButton ID="btnInsert" runat="server" CommandName="Insert" ToolTip="أضافة بند جديد"
                                            ImageUrl="~/images/add.png" />
                                    </FooterTemplate>
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
                    <table width="100%" cellpadding="3" cellspacing="0" border="2px">
                        <tr>
                            <td style="width: 17%;">
                                <asp:Label ID="Label3" runat="server" Text="إجمالي مدين"></asp:Label>
                            </td>
                            <td style="width: 17%;">
                                <asp:Label ID="lblTotalDB" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 17%;">
                                <asp:Label ID="Label5" runat="server" Text="إجمالي دائن"></asp:Label>
                            </td>
                            <td style="width: 17%;">
                                <asp:Label ID="lblTotalCR" runat="server" Text=""></asp:Label>
                            </td>
                            <td style="width: 16%;">
                                <asp:Label ID="Label4" runat="server" Text="الفرق"></asp:Label>
                                <asp:ImageButton ID="BtnFind0" runat="server" ImageUrl="~/images/zoom_16.png" ValidationGroup="551"
                                    ToolTip="البحث عن بيانات قيد يومية" OnClick="BtnFind0_Click" />
                            </td>
                            <td style="width: 16%;">
                                <asp:Label ID="lblDiff" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table id="Table2" width="100%" cellpadding="0" cellspacing="0">
                        <tr align="right">
                            <td colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr align="right">
                            <td style="width: 70px;">
                                <asp:Label ID="Label14" runat="server" Text="المستخدم"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtUserName" Width="285px" runat="server" MaxLength="50" BackColor="#E8E8E8" CssClass="MouseStop"
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
                        <tr align="right">
                            <td style="width: 70px;">
                                <asp:Label ID="lblReason" runat="server" Visible="false" Text="سبب التعديل/الغاء"></asp:Label>
                            </td>
                            <td style="width: 300px;">
                                <asp:TextBox ID="txtReason" Width="285px" Visible="false" runat="server" MaxLength="100"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ValReason" Enabled="false" runat="server" ControlToValidate="txtReason"
                                    ErrorMessage="يجب إدخال سبب التعديل/الالغاء" ForeColor="Red" Display="Dynamic" SetFocusOnError="True"
                                    ValidationGroup="10">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 70px;">
                            </td>
                            <td style="width: 300px;">
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="4">
                                <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                            </td>
                        </tr>
                        <tr align="right">
                            <td colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="4" style="width: 100%;">
                                <asp:ImageButton ID="BtnNew" runat="server" AlternateText="جديد" CommandName="New"
                                    ImageUrl="~/images/insource_642.png"   ToolTip="أضافة قيد يومية جديد"
                                    ValidationGroup="1" OnClientClick='return confirm("هل أنت متاكد من حفظ بيانات القيد؟")'
                                    OnClick="BtnNew_Click" />
                                <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="تعديل" CommandName="Edit"
                                    ImageUrl="~/images/draw_pen_642.png"   ToolTip="تعديل بيانات قيد يومية" OnClientClick="return Validate();"
                                    Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                                <asp:ImageButton ID="BtnClear" runat="server" AlternateText="مسح" CommandName="Clear"
                                    ImageUrl="~/images/erasure_642.png"   ToolTip="مسح خانات الشاشة"
                                    OnClick="BtnClear_Click" />
                                <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="إلغاء" CommandName="Delete"
                                    ImageUrl="~/images/cut_642.png"   ToolTip="إلغاء بيانات قيد يومية"
                                    OnClientClick="return Validate2();" OnClick="BtnDelete_Click" />
                                <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="بحث" CommandName="Find"
                                    ImageUrl="~/images/binoculars_642.png"   ToolTip="البحث عن بيانات القيد"
                                    OnClick="BtnSearch_Click" />
                                <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="طباعة" CommandName="Print"
                                    ImageUrl="~/images/print_64A.png" ValidationGroup="1"   ToolTip="طباعة قيد اليومية"
                                    OnClick="BtnPrint_Click" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </center>
                <div style="text-align: left; width: 50%; float: left; visibility:hidden;">
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
                        ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label13"
                        ImageControlID="Image1" ExpandedText="(أخفاء التفاصيل)" CollapsedText="(عرض التفاصيل)"
                        ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                        SuppressPostBack="true" />
                </div>
            </fieldset>
        </div>
    </center>
</asp:Content>
