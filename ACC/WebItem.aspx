﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="WebItem.aspx.cs" Inherits="ACC.WebItem"  Culture="auto:ar-EG" UICulture="auto"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="JavaScript">
        function pageLoad() {
            SetMyStyle();
            $(function () {
                if (document.getElementById("ulMain").className == "topnav") {
                    $('input[id="ContentPlaceHolder1_txtICat"]').watermark("--- أختر نوع الصنف ---");
                }
                else {
                    $('input[id="ContentPlaceHolder1_txtICat"]').watermark("--- Select Item Category  ---");
                }
            });
            // fF9C591      
        } 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" language="javascript">
        function popup(id) {
            extender = $find(id);
            event.cancelBubble = true;
            //if (extender._popupVisible == true) extender.hidePopup();
            //else extender.showPopup();
            extender.showPopup();
            myextender = $find('ContentPlaceHolder1_txtICat');
            if (myextender) {
                myextender.focus();
            }
        }    
    </script>
    <center>  
        <div class="Round4Courner" style="width: 99%">
            <fieldset class="Rounded4CornersNoShadow" style="padding: 2px; margin: 2px; width: 99%;
                border: solid 2px #800000">
                <legend id="leg1" runat="server" align="<%$ Resources:Resource, dir2 %>" style="font-size: 18px; color: #800000; text-align: center;"><b>
                <asp:Literal ID="Literal2" Text="<%$ Resources:Header %>" runat="server"></asp:Literal> <!-- [ بيانات الأصناف ] -->
                    </b></legend>
                <br />
                <center> 
                    <table  width="100%" cellpadding="2px">
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label22" runat="server" Text="نوع الصنف*" meta:resourcekey="Label22" ></asp:Label>
                            </td>
                            <td style="width: 300px; margin-right: 40px;" colspan="3">
                                <asp:TextBox ID="txtICat" Width="250px" runat="server"></asp:TextBox>
                                <asp:Panel ID="Panel6" runat="server" cssClass="popupConrol" ScrollBars="Auto" BackColor="#FFFFCC"
                                    BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px">
                                    <asp:TreeView ID="TreeView1" runat="server" ExpandDepth="0" Height="230px" ShowLines="True"
                                        Width="250px" ImageSet="Arrows" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged"
                                        OnTreeNodePopulate="TreeView1_TreeNodePopulate" BackColor="#FFFFCC">
                                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                                            NodeSpacing="0px" VerticalPadding="0px" />
                                        <ParentNodeStyle Font-Bold="False" />
                                        <SelectedNodeStyle Font-Underline="True" ForeColor="Red" HorizontalPadding="0px"
                                            VerticalPadding="0px" />
                                    </asp:TreeView>
                                </asp:Panel>
                                <ajax:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="txtICat"
                                    PopupControlID="Panel6" Position="Bottom" CommitProperty="value">
                                </ajax:PopupControlExtender>
                                <asp:ImageButton ID="ImageButton1" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png" ToolTip="<%$ Resources:Image1Tooltip %>"
                                    OnClick="ImageButton1_Click" /> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtICat"
                                    ErrorMessage="<%$ Resources:ICatValid %>" ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator> 
                            </td>
                            <td style="width: 82px;">
                            </td>
                            <td style="width: 300px;" colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="LblCode" runat="server" Text="كود الصنف*" meta:resourcekey="LblCode"></asp:Label>
                            </td>
                            <td style="width: 300px; margin-right: 40px;" colspan="3">
                                <asp:TextBox ID="txtITCode" Width="45px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:TextBox ID="txtITCode0" Width="15px" runat="server" MaxLength="1"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" 
                                    ImageUrl="~/images/zoom_16.png" ToolTip="<%$ Resources:FindTooltip %>"
                                    onclick="BtnFind_Click" /> 
                                <asp:RequiredFieldValidator ID="ValCode" runat="server" ControlToValidate="txtITCode"
                                    ErrorMessage="<%$ Resources:EnterItem %>" ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtITCode0"
                                    ErrorMessage="<%$ Resources:EnterItem2 %>" ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td> 
                            <td style="width: 82px;">
                                <asp:Label ID="Label16" runat="server" Text="Part No." meta:resourcekey="Label16"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtITCode2" Width="250px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtITCode2"
                                    ErrorMessage="<%$ Resources:EnterItem3 %>" ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label17" runat="server" Text="New Code*"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtNCode" Width="150px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNCode"
                                    ErrorMessage="<%$ Resources:EnterItem %>" ForeColor="Red" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                            </td> 
                            <td style="width: 82px;">
                            </td>
                            <td style="width: 300px;" colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label2" runat="server" Text="الاسم عربي" meta:resourcekey="Label2"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtITName1" Width="300px" runat="server" MaxLength="100"></asp:TextBox>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label5" runat="server" Text="اللون" meta:resourcekey="Label5"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlIColor" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label3" runat="server" Text="الاسم أنجليزي" meta:resourcekey="Label3"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtITName2" Width="300px" runat="server" MaxLength="100"></asp:TextBox>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label11" runat="server" Text="المقاس" meta:resourcekey="Label11"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlISize" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label23" runat="server" Text="الحجم" meta:resourcekey="Label23"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlIWidth" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label1" runat="server" Text="بلد المنشأ" meta:resourcekey="Label1"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlICOO" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label24" runat="server" Text="وحدة المفرد" meta:resourcekey="Label24"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:DropDownList ID="ddlitUnit1" Width="100px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label4" runat="server" Text="سعر البيع" meta:resourcekey="Label4"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtItSPrice1" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator27" runat="server" ControlToValidate="txtItSPrice1"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                    <!-- "يجب أن تكون القيمة رقمية" -->
                            </td> 
                            <td style="width: 70px;">
                                <asp:Label ID="Label28" runat="server" Text="أقل سعر" meta:resourcekey="Label28"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtITLPrice1" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtITLPrice1"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                    <!-- "يجب أن تكون القيمة رقمية" -->
                            </td> 
                            <td style="width: 82px;">
                                <asp:Label ID="Label8" runat="server" Text="حد الطلب" meta:resourcekey="Label8"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtITReorder" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtITReorder"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label25" runat="server" Text="وحدة الجملة" meta:resourcekey="Label25"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:DropDownList ID="ddlitUnit2" Width="100px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label6" runat="server" Text="سعر البيع" meta:resourcekey="Label6"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtITSPrice2" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtITSPrice2"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                            <td style="width: 70px;">
                                <asp:Label ID="Label7" runat="server" Text="أقل سعر" meta:resourcekey="Label7"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtITLPrice2" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtITLPrice2"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label31" runat="server" Text="الشد" meta:resourcekey="Label31"></asp:Label>
                            </td>
                            <td style="width: 90px;">
                                <asp:TextBox ID="txtITEqual" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtITEqual"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label26" runat="server" Text="سعر التكلفة" meta:resourcekey="Label26"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtITCPrice" Width="100px" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtITCPrice"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <asp:CheckBox ID="ChkReturnItem" Text="Need Return Old Parts?" runat="server" />
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label10" runat="server" Text="صنف بديل 1" meta:resourcekey="Label10"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlSubItem1" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label12" runat="server" Text="ملاحظات" meta:resourcekey="Label12"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtRemark" Width="300px" runat="server" MaxLength="100"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txtRemark"
                                    Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                    ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label13" runat="server" Text="صنف بديل 2" meta:resourcekey="Label13"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:DropDownList ID="ddlSubItem2" Width="200px" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 90px;">
                                <asp:Label ID="Label14" runat="server" Text="المستخدم" meta:resourcekey="Label14"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtUserName" Width="300px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                    Enabled="false"></asp:TextBox>
                            </td>
                            <td style="width: 82px;">
                                <asp:Label ID="Label15" runat="server" Text="بتاريخ" meta:resourcekey="Label15"></asp:Label>
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:TextBox ID="txtUserDate" Width="150px" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                    Enabled="false">                                                               
                                </asp:TextBox>
                                <asp:Label ID="Label27" runat="server" Text="* حقول الزامية" meta:resourcekey="Label27"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="8">
                                <br />
                                <asp:Panel ID="Panel3" runat="server" Height="30px" BackColor="#5D7B9D" Width="99.5%"
                                    Direction="<%$ Resources:Resource, dir1 %>" ForeColor="#FFFF99">
                                    <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                        <div id="div10" runat="server" style="<%$ Resources:Div10Style %>">
                                            <asp:Literal ID="Literal1" Text="<%$ Resources:Panel3 %>" runat="server"></asp:Literal> 
                                         </div> <!-- الأرصدة الأفتتاحية -->
                                        <div id="div11" runat="server" style="<%$ Resources:Div11Style %>">
                                            <asp:Label ID="Label9" runat="server" Text="(عرض التفاصيل)" meta:resourcekey="Label9"></asp:Label>
                                        </div>
                                        <div id="div12" runat="server" style="<%$ Resources:Div12Style %>">
                                            <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/expand_blue.jpg" AlternateText="(Show Details...)" />
                                        </div>
                                    </div>
                                </asp:Panel>
                                <asp:Panel ID="Panel4" runat="server" Height="0" BackColor="#FFFFCC" class="Round4Courner"
                                    Width="99.3%" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px">
                                    <div style="width: 100%; overflow:none; overflow-x:auto ; border: 1px solid #800000;">
                                    <asp:GridView ID="grdCodes" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="Number"
                                        PageSize="1000" Width="99.9%" EmptyDataText="<%$ Resources:NoData %>">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="<%$ Resources:Name1 %>" SortExpression="<%$ Resources:Name %>" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblName1" Text='<%# Eval(GetLocalResourceObject("Name").ToString()) %>' runat="server"></asp:Label>
                                                </ItemTemplate>
                                                <ControlStyle Width="175px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="<%$ Resources:Loc %>" SortExpression="Loc" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtLoc" Text='<%# Bind("Loc") %>' MaxLength="20" runat="server"></asp:TextBox>
                                                </ItemTemplate>
                                                <ControlStyle Width="120px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="<%$ Resources:IOpen %>" SortExpression="IOpen" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtIOpen" Text='<%# Bind("IOpen") %>' MaxLength="20" ReadOnly="true" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator27" runat="server" ControlToValidate="txtIOpen"
                                                        Display="Dynamic" ErrorMessage="<%$ Resources:txtItSPrice1Valid %>" ForeColor="Red" Type="Currency"
                                                        ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                                </ItemTemplate>
                                                <ControlStyle Width="100px" />
                                                <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="<%$ Resources:OpenDate %>" SortExpression="OpenDate" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtOpenDate" Text='<%# Bind("OpenDate") %>' MaxLength="10" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="ValOpenDate" runat="server" ControlToValidate="txtOpenDate"
                                                        CultureInvariantValues="true" ErrorMessage="<%$ Resources:ChkDate %>" ForeColor="Red"
                                                        Type="Date" ValidationGroup="1" Display="Dynamic" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                                    <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                                        TargetControlID="txtOpenDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                                        PopupPosition="BottomLeft" />
                                                </ItemTemplate>
                                                <ControlStyle Width="100px" />
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
                                    </asp:GridView>
                                    </div>
                                </asp:Panel>
                                <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="Server" TargetControlID="Panel4"
                                    ExpandControlID="Panel3" CollapseControlID="Panel3" Collapsed="True" TextLabelID="Label9"
                                    ImageControlID="Image2" ExpandedText="<%$ Resources:Hide %>" CollapsedText="<%$ Resources:Show %>"
                                    ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                                    SuppressPostBack="true" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 70px;">
                                &nbsp;
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1"
                                    EnableClientScript="true" ShowSummary="true" ShowMessageBox="true" />
                            </td>
                            <td style="width: 70px;">
                                &nbsp;
                            </td>
                            <td style="width: 300px;" colspan="3">
                                <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="8">
                                <asp:ImageButton ID="BtnNew" runat="server" AlternateText="<%$ Resources:New %>" CommandName="New"
                                    ImageUrl="<%$ Resources:NewImage %>" CssClass="ops" ToolTip="<%$ Resources:NewTooltip %>"
                                    ValidationGroup="1" 
                                    OnClientClick='<%$ Resources:NewConfirm %>' 
                                    onclick="BtnNew_Click" />
                                <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="<%$ Resources:Edit %>" CommandName="Edit"
                                    ImageUrl="<%$ Resources:EditImage %>" CssClass="ops" ToolTip="<%$ Resources:EditTooltip %>"
                                    Width="64px" ValidationGroup="1" onclick="BtnEdit_Click" />
                                <asp:ImageButton ID="BtnClear" runat="server" AlternateText="<%$ Resources:Clear %>" CommandName="Clear"
                                    ImageUrl="<%$ Resources:ClearImage %>" CssClass="ops" 
                                    ToolTip="<%$ Resources:ClearTooltip %>" onclick="BtnClear_Click" />
                                <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="<%$ Resources:Delete %>" CommandName="Delete"
                                    ImageUrl="<%$ Resources:DeleteImage %>" CssClass="ops" ToolTip="<%$ Resources:DeleteTooltip %>" 
                                    OnClientClick='<%$ Resources:DeleteConfirm %>' 
                                    onclick="BtnDelete_Click" />
                                <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="<%$ Resources:Search %>" CommandName="Find"
                                    ImageUrl="<%$ Resources:SearchImage %>" CssClass="ops" 
                                    ToolTip="<%$ Resources:SearchTooltip %>" onclick="BtnSearch_Click" />
                            </td>
                        </tr>
                    </table>
                </center>
            </fieldset>
        </div>
    </center>
    <br />
</asp:Content>
