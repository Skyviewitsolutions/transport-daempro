<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="WebRepairReq.aspx.cs" Inherits="ACC.WebRepairReq" Culture="en-GB"
    UICulture="en-GB" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function Plate_itemSelected(sender, e) {
            var ace1Value = $get('ContentPlaceHolder1_txtCarNo');
            //var ace2Value = $get('ContentPlaceHolder1_txtPlateNo');
            var x = e.get_value().split(' . ');
            ace1Value.value = x[0];
            //ace2Value.value = x[1];
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<<<<<<< HEAD
    <div class="col-md-12  col-sm-12 col-xs-12">
        <div class="card card-body">
            <h3 id="leg1" runat="server" align="<%$ Resources:Resource, dir2 %> center">

                <asp:Literal ID="Literal2" Text="[ Repair Request ]" meta:resourcekey="Literal2" runat="server"></asp:Literal></h3>
=======
    <div class="ColorRounded4Corners col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
        <fieldset class="Rounded4CornersNoShadow">
            <legend id="leg1" runat="server" align="<%$ Resources:Resource, dir2 %>" style="font-size: 18px; color: #800000; text-align: center;">
                <b>
                    <asp:Literal ID="Literal2" Text="[ Repair Request ]" meta:resourcekey="Literal2" runat="server"></asp:Literal></b></legend>
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
            <div class="box box-info" align="right">
                <div class="body">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label1" runat="server" Text="Request No." meta:resourcekey="Label1"></asp:Label>

                                    <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:Label ID="lblBranch" runat="server" Text="Label"></asp:Label>
                                    <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                        ToolTip="<%$ Resources:SearchReq %>" OnClick="BtnFind_Click" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                        Display="Dynamic" ErrorMessage="<%$ Resources:EnterReq %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label6" runat="server" Text="From" meta:resourcekey="Label6"></asp:Label>

                                    <asp:DropDownList ID="ddlFrom2" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="ValFrom" runat="server" ControlToValidate="ddlFrom2"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="<%$ Resources:SelectFrom %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label2" runat="server" Text="Date/Time" meta:resourcekey="Label2"></asp:Label>

                                    <asp:TextBox ID="txtVouDate" MaxLength="10" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                                        Display="Dynamic" ErrorMessage="<%$ Resources:SelectReqDate %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                                        CultureInvariantValues="true" Display="Dynamic" ErrorMessage="<%$ Resources:ReqDate %>"
                                        ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                    <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                        TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                        PopupPosition="BottomLeft" />
                                    <asp:TextBox ID="txtInTime" runat="server" Text="00:00" MaxLength="5" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                    <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender1" TargetControlID="txtInTime"
                                        Mask="99:99" MaskType="Time" CultureName="en-us" MessageValidatorTip="true"
                                        runat="server"></ajaxToolkit:MaskedEditExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtInTime"
                                        Display="Dynamic" ErrorMessage="<%$ Resources:EnterTime %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="LblCode" runat="server" Text="Vehicle Type" meta:resourcekey="LblCode"></asp:Label>*
                     
                            <asp:DropDownList ID="ddlVehType" CssClass="form-control" runat="server"
                                AutoPostBack="True" OnSelectedIndexChanged="ddlVehType_SelectedIndexChanged">
                            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlVehType"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="<%$ Resources:SelectVehicle %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label10" runat="server" Text="Vehicle/No." meta:resourcekey="Label10"></asp:Label>

                                    <asp:DropDownList ID="ddlVehicle" CssClass="form-control" runat="server"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlVehicle_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlVehicle"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="<%$ Resources:SelectVeh %>" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtCarNo" MaxLength="15" CssClass="form-control" runat="server"
                                        autocomplete="off" AutoPostBack="True" OnTextChanged="txtCarNo_TextChanged"></asp:TextBox>
                                    <ajax:AutoCompleteExtender ID="AutoCompleteExtender03" runat="server" TargetControlID="txtCarNo"
                                        ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionCars20" OnClientItemSelected="Plate_itemSelected"
                                        MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="12"
                                        CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                    <asp:ImageButton ID="BtnFind2" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                        ToolTip="<%$ Resources:SearchVeh %>" OnClick="BtnFind2_Click" />
                                </div>
                            </div>
                        </div>
<<<<<<< HEAD
<%--                        Ankur kumar--%>
=======
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label3" runat="server" Text="Model" meta:resourcekey="Label3"></asp:Label>

                                    <asp:TextBox ID="txtModel" MaxLength="20" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label4" runat="server" Text="KMS" meta:resourcekey="Label4"></asp:Label>

                                    <asp:TextBox ID="txtKMS" MaxLength="20" runat="server" CssClass="form-control"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtKMS"
                                        Display="Dynamic" ErrorMessage="<%$ Resources:IntegerVal %>"
                                        ForeColor="Red" Type="Integer" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label5" runat="server" Text="Driver Name" meta:resourcekey="Label5"></asp:Label>*
                    
                            <asp:DropDownList ID="ddlDriver" CssClass="form-control" runat="server">
                            </asp:DropDownList>
                                    <%--<asp:RequiredFieldValidator ID="ValDriver" runat="server" ControlToValidate="ddlDriver"
                                InitialValue="-1" Display="Dynamic" ErrorMessage="<%$ Resources:SelectDriver %>" ForeColor="Red"
                                SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>--%>
                                </div>
                            </div>
                        </div>
<<<<<<< HEAD
                        <div class="col-md-12 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label7" runat="server" Text="Repair Required" meta:resourcekey="Label7"></asp:Label>
                                    <asp:CheckBoxList ID="ChkRequire" runat="server" RepeatDirection="Horizontal" CssClass="mytable" >
=======
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label7" runat="server" Text="Repair Required" meta:resourcekey="Label7"></asp:Label>

                                    <asp:CheckBoxList ID="ChkRequire" runat="server">
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                                        <asp:ListItem Value="0" Text="<%$ Resources:Req0 %>"></asp:ListItem>
                                        <asp:ListItem Value="1" Text="<%$ Resources:Req1 %>"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="<%$ Resources:Req2 %>"></asp:ListItem>
                                        <asp:ListItem Value="3" Text="<%$ Resources:Req3 %>"></asp:ListItem>
                                        <asp:ListItem Value="4" Text="<%$ Resources:Req4 %>"></asp:ListItem>
                                        <asp:ListItem Value="5" Text="<%$ Resources:Req5 %>"></asp:ListItem>
                                    </asp:CheckBoxList>
<<<<<<< HEAD
=======
                                </div>
                            </div>
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label8" runat="server" Text="Remark" meta:resourcekey="Label8"></asp:Label>

                                    <asp:TextBox ID="txtRemark" MaxLength="100" CssClass="form-control" runat="server"></asp:TextBox>
                                    <%--                            <asp:TextBox ID="txtDateOut" Visible="false" MaxLength="10" runat="server"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" Enabled="false" runat="server" ControlToValidate="txtDateOut"
                                CultureInvariantValues="true" Display="Dynamic" ErrorMessage="Request Date Should be Date Value"
                                ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                            <ajax:CalendarExtender ID="CalendarExtender2" runat="server" CssClass="MyCalendar"
                                TargetControlID="txtDateOut" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                PopupPosition="BottomLeft" />
                            <asp:TextBox ID="txtTimeOut" runat="server" Text="00:00:01" MaxLength="8" Width="60px"></asp:TextBox>
                            <ajaxToolkit:MaskedEditExtender ID="MaskedEditExtender2" TargetControlID="txtTimeOut"
                                Mask="99:99:99" MaskType="Time" CultureName="en-us" MessageValidatorTip="true"
                                runat="server">
                            </ajaxToolkit:MaskedEditExtender> --%>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label9" runat="server" Text="Load No." meta:resourcekey="Label9"></asp:Label>*
                     
                            <asp:Label ID="lblStatus" runat="server" CssClass="blink" Text=""></asp:Label>

                                    <asp:Label ID="Label35" runat="server" Text="Others" meta:resourcekey="Label35"></asp:Label>

                                    <asp:TextBox ID="txtRequire" MaxLength="50" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
<<<<<<< HEAD
                        <%--<div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    
                                </div>
                            </div>
                        </div>--%>
=======
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label14" runat="server" Text="User Name" meta:resourcekey="Label14"></asp:Label>
<<<<<<< HEAD
                                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                        Enabled="false"></asp:TextBox>
=======
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
<<<<<<< HEAD
=======
                                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                        Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                                    <asp:Label ID="Label15" runat="server" Text="Date" meta:resourcekey="Label15"></asp:Label>

                                    <asp:TextBox ID="txtUserDate" CssClass="form-control" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                        Enabled="false">                                                               
                                    </asp:TextBox>
                                    <asp:Label ID="Label27" runat="server" Text="* Required Fields" meta:resourcekey="Label27"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>

                                    <asp:ImageButton ID="BtnNew" runat="server" AlternateText="<%$ Resources:New %>" CommandName="New"
<<<<<<< HEAD
                                        ImageUrl="~/images/data add.png" CssClass="ops" ToolTip="<%$ Resources:NewTooltip %>"
                                        ValidationGroup="1" OnClientClick='<%$ Resources:NewConfirm %>'
                                        OnClick="BtnNew_Click" />
                                    <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="<%$ Resources:Edit %>" CommandName="Edit"
                                        ImageUrl="~/images/edit2.png" CssClass="ops" ToolTip="<%$ Resources:EditTooltip %>"
                                        Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                                    <asp:ImageButton ID="BtnClear" runat="server" AlternateText="<%$ Resources:Clear %>" CommandName="Clear"
                                        ImageUrl="~/images/clear all.png" CssClass="ops" ToolTip="<%$ Resources:ClearTooltip %>"
                                        OnClick="BtnClear_Click" />
                                    <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="<%$ Resources:Delete %>" CommandName="Delete"
                                        ImageUrl="~/images/delete2.png" CssClass="ops" ToolTip="<%$ Resources:DeleteTooltip %>"
                                        OnClientClick='<%$ Resources:DeleteConfirm %>'
                                        OnClick="BtnDelete_Click" />
                                    <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="<%$ Resources:Search %>" CommandName="Find"
                                        ImageUrl="~/images/data search.png" CssClass="ops" ToolTip="<%$ Resources:SearchTooltip %>"
                                        OnClick="BtnSearch_Click" />
                                    <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="<%$ Resources:Print %>" CommandName="Print"
                                        ImageUrl="~/images/print.png" ValidationGroup="1" CssClass="ops" ToolTip="<%$ Resources:PrintTooltip %>" />
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Label ID="Label34" runat="server" Text="(Show Details...)" meta:resourcekey="Label34"></asp:Label>
                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none">
                                    <asp:Panel ID="Panel2" runat="server">


                                        <asp:Panel ID="Panel1" runat="server">
                                            <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333"
                                                ShowHeader="False" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                                Width="100%" OnRowDeleting="grdAttach_RowDeleting">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="<%$ Resources:DeleteFile %>"
                                                                ImageUrl="~/images/cross.png" OnClientClick='<%$ Resources:DeleteFileConfirm %>' />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="File" ItemStyle-HorizontalAlign="Center">
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
                                            <ajax:CollapsiblePanelExtender ID="cpeDemo" runat="Server" TargetControlID="Panel1"
                                                ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label13"
                                                ImageControlID="Image1" ExpandedText="<%$ Resources:HideDetails %>" CollapsedText="<%$ Resources:ShowDetails %>"
                                                ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                                                SuppressPostBack="true" />
                                        </asp:Panel>
                                        <div class="form-row">
                                            <div class="form-group col-md-6 col-sm-12 col-xm-12">

                                                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                            </div>

                                            <div class="form-group col-md-6 col-sm-12 col-xm-12">

                                                <asp:ImageButton ID="BtnAttach" runat="server" AlternateText="Attach" CommandName="Attach"
                                                    CssClass="ops" ImageUrl="~/images/attach1.png" ToolTip="Attach File" ValidationGroup="1"
                                                    OnClick="BtnAttach_Click" />
                                            </div>
                                        </div>

=======
                                        ImageUrl="<%$ Resources:NewImage %>" CssClass="ops" ToolTip="<%$ Resources:NewTooltip %>"
                                        ValidationGroup="1" OnClientClick='<%$ Resources:NewConfirm %>'
                                        OnClick="BtnNew_Click" />
                                    <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="<%$ Resources:Edit %>" CommandName="Edit"
                                        ImageUrl="<%$ Resources:EditImage %>" CssClass="ops" ToolTip="<%$ Resources:EditTooltip %>"
                                        Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                                    <asp:ImageButton ID="BtnClear" runat="server" AlternateText="<%$ Resources:Clear %>" CommandName="Clear"
                                        ImageUrl="<%$ Resources:ClearImage %>" CssClass="ops" ToolTip="<%$ Resources:ClearTooltip %>"
                                        OnClick="BtnClear_Click" />
                                    <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="<%$ Resources:Delete %>" CommandName="Delete"
                                        ImageUrl="<%$ Resources:DeleteImage %>" CssClass="ops" ToolTip="<%$ Resources:DeleteTooltip %>"
                                        OnClientClick='<%$ Resources:DeleteConfirm %>'
                                        OnClick="BtnDelete_Click" />
                                    <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="<%$ Resources:Search %>" CommandName="Find"
                                        ImageUrl="<%$ Resources:SearchImage %>" CssClass="ops" ToolTip="<%$ Resources:SearchTooltip %>"
                                        OnClick="BtnSearch_Click" />
                                    <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="<%$ Resources:Print %>" CommandName="Print"
                                        ImageUrl="<%$ Resources:PrintImage %>" ValidationGroup="1" CssClass="ops" ToolTip="<%$ Resources:PrintTooltip %>" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Panel ID="Panel2" runat="server" Height="30px" BackColor="#5D7B9D" Width="99.5%"
                                        Direction="LeftToRight" ForeColor="#FFFF99">

                                        <asp:Label ID="Label34" runat="server" Text="(Show Details...)" meta:resourcekey="Label34"></asp:Label>


                                        <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" AlternateText="<%$ Resources:ShowDetails %>" />
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7


                                    </asp:Panel>
                                </div>
<<<<<<< HEAD
                            </div>
                        </div>


                    </div>
                </div>
            </div>

        </div>
    </div>

=======
                </div>
            </div>
            <asp:Panel ID="Panel1" runat="server" Height="0" BackColor="#FFFFCC" Width="99.3%"
                BorderColor="Maroon">
                <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333"
                    ShowHeader="False" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                    Width="99%" OnRowDeleting="grdAttach_RowDeleting">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="<%$ Resources:DeleteFile %>"
                                    ImageUrl="~/images/cross.png" OnClientClick='<%$ Resources:DeleteFileConfirm %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="File" ItemStyle-HorizontalAlign="Center">
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
             
            </asp:Panel>
                          <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                      </div></div></div>
                 <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:ImageButton ID="BtnAttach" runat="server" AlternateText="Attach" CommandName="Attach"
                                CssClass="ops" ImageUrl="~/images/attach1.png" ToolTip="Attach File" ValidationGroup="1"
                                OnClick="BtnAttach_Click" />
                        </div></div></div>
            <ajax:CollapsiblePanelExtender ID="cpeDemo" runat="Server" TargetControlID="Panel1"
                ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label13"
                ImageControlID="Image1" ExpandedText="<%$ Resources:HideDetails %>" CollapsedText="<%$ Resources:ShowDetails %>"
                ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                SuppressPostBack="true" />
    </div>
    </div></div>
                         </fieldset>
        </div>
    
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
</asp:Content>
<asp:Content ID="c3" runat="server" ContentPlaceHolderID="ContentBottom">
    <style>
        @media screen and (max-width: 600px) {
            .mytable{
                width:100%;
            }
            .mytable tbody tr th, .mytable tbody tr td {
                display: table-row;
                text-align:left;
            }
        }
    </style>
</asp:Content>