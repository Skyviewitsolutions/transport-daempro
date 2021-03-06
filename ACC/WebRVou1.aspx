<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
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


    <fieldset class="card">
        <!--editing by chanda verma-->
        <div class="card-header">
            <h4 class="card-title">
                <asp:Label ID="lblHead" runat="server" Text="[ سند القبض ]"></asp:Label>
            </h4>
        </div>
        <div class="card-body">

            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:TextBox ID="txtSearch" MaxLength="10" CssClass="form-control" placeholder="بحث" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                        ToolTip="البحث عن بيانات سند القبض" OnClick="BtnFind_Click" />
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:RadioButtonList ID="rdoType" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" AutoPostBack="True"
                        OnSelectedIndexChanged="rdoType_SelectedIndexChanged">
                        <asp:ListItem Value="0" Selected="True">فواتير</asp:ListItem>
                        <asp:ListItem Value="1">عملاء</asp:ListItem>
                        <asp:ListItem Value="2">رسوم إدارية</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:Label ID="Label1" runat="server" Text="رقم السند"></asp:Label>
                    *
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop form-control"></asp:TextBox>
                    <asp:Label ID="lblBranch2" runat="server" Text="Label"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                        Display="Dynamic" ErrorMessage="يجب أختيار رقم السند" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>


                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:Label ID="Label2" runat="server" Text="التاريخ"></asp:Label>
                    *
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                    <asp:TextBox ID="txtVouDate" MaxLength="10" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                        Display="Dynamic" ErrorMessage="يجب أختيار تاريخ السند" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                        CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                        ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtVouDate" ValidationGroup="1" ValidationExpression="^(((((0[1-9])|(1\d)|(2[0-8]))\/((0[1-9])|(1[0-2])))|((31\/((0[13578])|(1[02])))|((29|30)\/((0[1,3-9])|(1[0-2])))))\/((20[0-9][0-9])|(19[0-9][0-9])))|((29\/02\/(19|20)(([02468][048])|([13579][26]))))$" runat="server" ErrorMessage="يجب أن تكون القيمة تاريخ">*</asp:RegularExpressionValidator>
                    <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                        TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                        PopupPosition="BottomLeft" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="lblClaim" runat="server" Text="رقم المطالبة"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:DropDownList ID="ddlClaim" CssClass="form-control" runat="server"
                        AutoPostBack="True" OnSelectedIndexChanged="ddlClaim_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="lblPerson" runat="server" Text="استلمنا من*"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtPerson" MaxLength="50" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPerson"
                        Display="Dynamic" ErrorMessage="يجب إدخال المستلم" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row text-center">
                <div class="form-group col-md-12 col-sm-12 col-xm-12">
                    <div id="divGrid" runat="server">
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
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                    <asp:Label ID="Label4" runat="server" Text="الاجمالي"></asp:Label>
                </div>
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtAmount" MaxLength="15" ReadOnly="true" runat="server"
                        AutoPostBack="True" OnTextChanged="txtDiscount_TextChanged" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAmount"
                        Display="Dynamic" ErrorMessage="يجب إدخال مبلغ السند" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ValDebit2" runat="server" ControlToValidate="txtAmount"
                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                        Type="Currency">*</asp:CompareValidator>
                </div>
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                    <asp:RadioButtonList ID="rdoPayment" runat="server" AutoPostBack="True" CssClass="form-control" Visible="false"
                        OnSelectedIndexChanged="rdoPayment_SelectedIndexChanged"
                        BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="2px" CellPadding="2"
                        CellSpacing="2">
                        <asp:ListItem Selected="True" Value="0">نقداً</asp:ListItem>
                        <asp:ListItem Value="1">شيكات</asp:ListItem>
                        <asp:ListItem Value="2">شبكة</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                    <asp:Label ID="Label11" runat="server" Text="وذلك عن"></asp:Label>
                </div>
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                </div>
                <div class="form-group col-md-2 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtRemark" MaxLength="200" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label12" runat="server" Text="الخصم"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtDiscount" MaxLength="10" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDiscount"
                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                        Type="Currency">*</asp:CompareValidator>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="lblChqDate" runat="server" Visible="false" Text="تاريخ الشيك*"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtChqDate" MaxLength="10" Visible="false" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValChqDate" runat="server" ControlToValidate="txtChqDate" Enabled="false"
                        Display="Dynamic" ErrorMessage="يجب إدخال تاريخ الشيك" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                    <ajax:CalendarExtender ID="CalendarExtender2" runat="server" CssClass="MyCalendar"
                        TargetControlID="txtChqDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                        PopupPosition="BottomLeft" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtChqDate"
                        CultureInvariantValues="true" Display="Dynamic" ErrorMessage="يجب أن تكون القيمة تاريخ"
                        ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label16" runat="server" Text="ارضيات"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtLand" MaxLength="10" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtLand"
                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                        Type="Currency">*</asp:CompareValidator>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="lblChqNo" runat="server" Visible="false" Text="رقم الشيك*"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtchqNo" Visible="false" MaxLength="15" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValchqNo" runat="server" ControlToValidate="txtchqNo" Enabled="false"
                        Display="Dynamic" ErrorMessage="يجب إدخال رقم الشيك" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label18" runat="server" Text="عميل"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtCust" MaxLength="10" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtCust"
                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                        Type="Currency">*</asp:CompareValidator>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="lblBankName" runat="server" Visible="false" Text="مسحوب على بنك*"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtBankName" MaxLength="50" Visible="false" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValBankName" runat="server" ControlToValidate="txtBankName" Enabled="false"
                        Display="Dynamic" ErrorMessage="يجب إدخال مسحوب على ينك" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label19" runat="server" Text="إيرادات أخرى"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtOthers" MaxLength="10" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtDiscount_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtOthers"
                        Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" Operator="DataTypeCheck"
                        Type="Currency">*</asp:CompareValidator>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label20" runat="server" Visible="false" Text="مسحوب على بنك*"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="TextBox2" MaxLength="50" Visible="false" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtBankName" Enabled="false"
                        Display="Dynamic" ErrorMessage="يجب إدخال مسحوب على ينك" ForeColor="Red" SetFocusOnError="True"
                        ValidationGroup="1">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label7" runat="server" Text="الصافي"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtNet" MaxLength="10" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:CheckBox ID="ChkCheque" Text="بشيك" runat="server" AutoPostBack="True" OnCheckedChanged="ChkCheque_CheckedChanged" />

                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:LinkButton ID="BtnRecovery" runat="server" OnClick="BtnRecovery_Click">الاسترداد التلقائي</asp:LinkButton>

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label21" runat="server" Text="المدقوع نقداً"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtCashAmount" MaxLength="15" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator ID="ValCashAmount2" runat="server" ControlToValidate="txtCashAmount"
                        ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                        Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    <asp:CheckBox ID="ChkCashAmount" runat="server" AutoPostBack="True" OnCheckedChanged="ChkCashAmount_CheckedChanged" />

                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12"></div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12"></div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label22" runat="server" Text="شبكة مدى"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtShAmount" MaxLength="15" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtShAmount"
                        ErrorMessage="يجب ان تكون القيمة رقمية" ForeColor="Red" SetFocusOnError="True"
                        Display="Dynamic" Type="Currency" ValidationGroup="1" Operator="DataTypeCheck">*</asp:CompareValidator>
                    <asp:CheckBox ID="ChkShAmount" runat="server" AutoPostBack="True" OnCheckedChanged="ChkShAmount_CheckedChanged" />

                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12"></div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12"></div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label14" runat="server" Text="المستخدم"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtUserName"  runat="server" MaxLength="50" BackColor="#E8E8E8" CssClass="MouseStop form-control"
                        Enabled="false"></asp:TextBox>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:Label ID="Label15" runat="server" Text="بتاريخ"></asp:Label>
                </div>
                <div class="form-group col-md-3 col-sm-12 col-xm-12">
                    <asp:TextBox ID="txtUserDate" runat="server" MaxLength="50" BackColor="#E8E8E8" CssClass="MouseStop form-control"
                        Enabled="false">                                                               
                    </asp:TextBox>
                    <asp:Label ID="Label27" runat="server" Text="* حقول الزامية"></asp:Label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6 col-sm-12 col-xm-12">
                    <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                </div>
                <div class="form-group col-md-6 col-sm-12 col-xm-12">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-12 col-sm-12 col-xm-12">
                    <asp:ImageButton ID="BtnNew" runat="server" AlternateText="جديد" CommandName="New"
                        ImageUrl="~/images/data add.png" ToolTip="أضافة سند جديد"
                        ValidationGroup="1" OnClientClick='return confirm("هل أنت متاكد من حفظ بيانات السند؟")'
                        OnClick="BtnNew_Click" />
                    <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="تعديل" CommandName="Edit"
                        ImageUrl="~/images/edit2.png" ToolTip="تعديل بيانات السند"
                        Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                    <asp:ImageButton ID="BtnClear" runat="server" AlternateText="مسح" CommandName="Clear"
                        ImageUrl="~/images/clear all.png" ToolTip="مسح خانات الشاشة"
                        OnClick="BtnClear_Click" />
                    <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="إلغاء" CommandName="Delete"
                        ImageUrl="~/images/delete2.png" ToolTip="إلغاء بيانات السند" OnClientClick='return confirm("هل أنت متاكد من الغاء بيانات السند؟")'
                        OnClick="BtnDelete_Click" />
                    <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="بحث" CommandName="Find"
                        ImageUrl="~/images/data search.png" ToolTip="البحث عن بيانات السند"
                        OnClick="BtnSearch_Click" />
                    <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="طباعة" CommandName="Print"
                        ImageUrl="~/images/print.png" ValidationGroup="1" ToolTip="طباعة السند"
                        OnClick="BtnPrint_Click" />
                </div>


            </div>
            <div class="form-row">
                <div class="form-group col-md-12 col-sm-12 col-xm-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">المرفقات
                               <asp:Label ID="Label34" runat="server">(عرض التفاصيل)</asp:Label>
                            </h4>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: none;">





                            <asp:Panel ID="Panel2" runat="server">
                                <%--<div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                            <div style="float: right;">
                                </div>
                            <div style="float: right; margin-right: 20px;">
                                
                            </div>
                            <div style="float: left; vertical-align: middle;">
                                <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" AlternateText="(Show Details...)" />
                            </div>
                        </div>--%>
                                <asp:Panel ID="Panel1" runat="server">
                                    <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="false"
                                        ShowHeader="false" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                        Width="100%" OnRowDeleting="grdAttach_RowDeleting">
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
                                    <ajax:CollapsiblePanelExtender ID="cpeDemo" runat="Server" TargetControlID="Panel1"
                                        ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label34"
                                        ImageControlID="Image1" ExpandedText="(أخفاء التفاصيل)" CollapsedText="(عرض التفاصيل)"
                                        ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                                        SuppressPostBack="true" />
                                    <%-- <table width="100%">
                            <tr>
                                <td align="right">
                                   
                                </td>
                                <td align="left">
                                    
                                </td>
                            </tr>
                        </table>--%>
                                </asp:Panel>
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>
                                    <div class="col-sm-6">
                                        <asp:ImageButton ID="BtnAttach" runat="server" AlternateText="مرفقات" CommandName="Attach"
                                            ImageUrl="~/images/attach2.png" OnClick="BtnAttach_Click" ToolTip="المرفقات"
                                            ValidationGroup="1" />
                                    </div>
                                </div>
                            </asp:Panel>

                        </div>

                    </div>


                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-12 col-sm-12 col-xm-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">المحاسبي  التوجيه
                               <asp:Label ID="Label6" runat="server">(عرض التفاصيل)</asp:Label>
                            </h4>
                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body" style="display: none;">

                            <asp:Panel ID="Panel3" runat="server">
                                <asp:Panel ID="Panel4" runat="server">
                                    <table width="99%" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label10" runat="server" Text="النقدية/البنك"></asp:Label>
                                                *
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlDbCode" CssClass="form-control" runat="server" Enabled="false">
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
                                                <asp:DropDownList ID="ddlArea" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label13" runat="server" Text="الفرع"></asp:Label>
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlCostCenter" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label5" runat="server" Text="المشروع"></asp:Label>
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlProject" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label8" runat="server" Text="حساب التكاليف"></asp:Label>
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlCostAcc" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label17" runat="server" Text="الموظف"></asp:Label>
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlEmp" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 125px;">
                                                <asp:Label ID="Label9" runat="server" Text="الشاحنة"></asp:Label>
                                            </td>
                                            <td align="center" style="width: 300px;">
                                                <asp:DropDownList ID="ddlCarNo" CssClass="form-control" runat="server" Enabled="false">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                    <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server" TargetControlID="Panel4"
                                        ExpandControlID="Panel3" CollapseControlID="Panel3" Collapsed="True" TextLabelID="Label6"
                                        ImageControlID="ImageButton1" ExpandedText="(أخفاء التفاصيل)" CollapsedText="(عرض التفاصيل)"
                                        ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                                        SuppressPostBack="true" />
                                </asp:Panel>
                            </asp:Panel>
                      </div>

                    </div>
                </div>
            </div>
        </div>

        <!--editing by chanda verma-->
    </fieldset>

</asp:Content>
