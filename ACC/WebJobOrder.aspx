<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true"
    CodeBehind="WebJobOrder.aspx.cs" Inherits="ACC.WebJobOrder" Culture="en-GB" UICulture="en-GB"
    MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .myBody {
            height: 0px;
            overflow: hidden;
        }
    </style>
    <script type="text/javascript">
        function pageLoad(sender, args) {
            SetMyStyle();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<<<<<<< HEAD

    <div class="col-md-12  col-sm-12 col-xs-12">
        <div class="card card-body">
            <h3 align="center">[ Job Work ]</h3>

            <div class="box box-info" align="right">
                <div class="body">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label1" runat="server" Text="Order No."></asp:Label>


                                    <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop form-control" ReadOnly="true"></asp:TextBox>
                                    <asp:Label ID="lblBranch2" runat="server" Text="Label"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                        Display="Dynamic" ErrorMessage="You should Enter Job Work No." ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
=======
   
        <div class="ColorRounded4Corners col-md-10 col-md-offset-1 col-sm-12 col-xs-12">
            <fieldset class="Rounded4CornersNoShadow col-md-10 col-md-offset-1 col-sm-12 col-xs-12" >
                <legend align="center" style="font-size: 18px; color: #800000; text-align: center;">
                    <b>[ Job Work ]</b></legend>
           
                 <div class="box box-info" align="right">
                <div class="body">
                    <div class="row">
                     <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label1" runat="server" Text="Order No."></asp:Label>
                                
                       
                                <asp:TextBox ID="txtVouNo" MaxLength="10" runat="server" CssClass="MouseStop form-control" ReadOnly="true"></asp:TextBox>
                                <asp:Label ID="lblBranch2" runat="server" Text="Label"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVouNo"
                                    Display="Dynamic" ErrorMessage="You should Enter Job Work No." ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                        </div></div></div>
                         <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>
                       
                                <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server" 
                                    AutoPostBack="True" onselectedindexchanged="ddlStatus_SelectedIndexChanged">
                                    <asp:ListItem Value="0">Open</asp:ListItem>
                                    <asp:ListItem Value="1">Pause</asp:ListItem>
                                    <asp:ListItem Value="2">Close</asp:ListItem>
                                </asp:DropDownList>
                         
                                <asp:TextBox ID="txtSearch" MaxLength="10" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="Search for Job Work Data" OnClick="BtnFind_Click" />
                         </div></div></div>
                       <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label15" runat="server" Text="Order Type"></asp:Label>
                          
                                <asp:CheckBoxList ID="ChkRepairType" runat="server" RepeatColumns="6" Width="100%">
                                    <asp:ListItem Value="0">Outside Repair</asp:ListItem>
                                    <asp:ListItem Value="1">Routine Services</asp:ListItem>
                                    <asp:ListItem Value="2">Driver's Complaint</asp:ListItem>
                                    <asp:ListItem Value="3">Break Down</asp:ListItem>
                                    <asp:ListItem Value="4">Inspector</asp:ListItem>
                                    <asp:ListItem Value="5">WorkShop</asp:ListItem>
                                </asp:CheckBoxList>
                          </div></div></div>
                        <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label2" runat="server" Text="Date In"></asp:Label>
                             
                         
                                <asp:TextBox ID="txtVouDate" MaxLength="10" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                                    Display="Dynamic" ErrorMessage="You Should Select Order Date" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                                    CultureInvariantValues="true" Display="Dynamic" ErrorMessage="Order Date Should be Date Value"
                                    ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                    TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                    PopupPosition="BottomLeft" />
                                <asp:TextBox ID="txtVouTime" MaxLength="15" ReadOnly="true"  CssClass="MouseStop form-control"
                                    runat="server"></asp:TextBox>
                           </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label6" runat="server" Text="Repair Req.#"></asp:Label>
                           
                                <asp:TextBox ID="txtRepairReq" MaxLength="10" runat="server" CssClass="form-control" 
                                    AutoPostBack="True" ontextchanged="txtRepairReq_TextChanged"></asp:TextBox>
                                <asp:ImageButton ID="BtnFind2" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="Search for Repair Request" onclick="BtnFind2_Click" />
                                <asp:RequiredFieldValidator ID="ValRepairReq" runat="server" ControlToValidate="txtRepairReq"
                                    Display="Dynamic" ErrorMessage="You should Enter Repair Request No." ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                          </div></div></div>
                      <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label5" runat="server" Text="Vehicle Type"></asp:Label>
                         
                                <asp:DropDownList ID="ddlVehType" CssClass="form-control" runat="server" Enabled="false"
                                    AutoPostBack="True" onselectedindexchanged="ddlVehType_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlVehType"
                                    InitialValue="-1" Display="Dynamic" ErrorMessage="You Should Select Vechile Type" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                           </div></div></div>
                    <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label4" runat="server" Text="Car No."></asp:Label>
                         
                                <asp:TextBox ID="txtCarNo" MaxLength="15" CssClass="form-control" autocomplete="off" AutoPostBack="True" ReadOnly="true"
                                    runat="server"></asp:TextBox>
                                <ajax:AutoCompleteExtender ID="AutoCompleteExtender03" runat="server" TargetControlID="txtCarNo"
                                    ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionCars20" OnClientItemSelected="Plate_itemSelected"
                                    MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="30"
                                    CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                <asp:ImageButton ID="BtnFindCar" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                    ToolTip="Search for Car" onclick="BtnFindCar_Click" Enabled="false" />
                                <asp:DropDownList ID="ddlCar" CssClass="form-control" runat="server" AutoPostBack="True"  Enabled="false"
                                    onselectedindexchanged="ddlCar_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="ValCar" runat="server" ControlToValidate="ddlCar"
                                    InitialValue="-1" Display="Dynamic" ErrorMessage="You Should Select Car" ForeColor="Red"
                                    SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                       </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label11" runat="server" Text="Driver"></asp:Label>
                           
                                <asp:DropDownList ID="ddlDriver" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                          </div></div></div>
                      <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label9" runat="server" Text="K.M. Reading"></asp:Label>
                          
                                <asp:TextBox ID="txtKMReading" MaxLength="15" runat="server" CssClass="form-control"></asp:TextBox>
                            </div></div></div>
                             <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label12" runat="server" Text="Last Reading"></asp:Label>
                        
                                <asp:TextBox ID="txtKMReading2" ReadOnly="true" CssClass="MouseStop form-control" MaxLength="15"
                                    runat="server"></asp:TextBox>
                           </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label13" runat="server" CssClass="form-control" Text="Formen"></asp:Label>
                         
                                <asp:DropDownList ID="ddlFormen" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                           </div></div></div>
                             <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label35" runat="server" Text="Date Out"></asp:Label>
                         
                                <asp:TextBox ID="txtEndDateTime" ReadOnly="true" CssClass="MouseStop form-control"
                                    MaxLength="25" runat="server"></asp:TextBox>
                           </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label21" runat="server" Text="Work Request"></asp:Label>
                           
                                <asp:TextBox ID="txtWorkRequest" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                    runat="server"></asp:TextBox>
                           </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label22" runat="server" Text="Work Done"></asp:Label>
                          
                                <asp:TextBox ID="txtWorkDone" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                    runat="server"></asp:TextBox>
                         </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label7" runat="server" Text="Remark"></asp:Label>
                        
                                <asp:TextBox ID="txtRemark" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                    runat="server"></asp:TextBox>
                         </div></div></div>
                          <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                                <asp:Label ID="Label14" runat="server" Text="Fault Type"></asp:Label>
                           
                                <asp:CheckBoxList ID="ChkFaultType" runat="server" RepeatColumns="8" Width="100%">
                                    <asp:ListItem Value="0">Mechanical</asp:ListItem>
                                    <asp:ListItem Value="1">Electrical</asp:ListItem>
                                    <asp:ListItem Value="2">Denting</asp:ListItem>
                                    <asp:ListItem Value="3">Painting</asp:ListItem>
                                    <asp:ListItem Value="4">Welding</asp:ListItem>
                                    <asp:ListItem Value="5">Cooling</asp:ListItem>
                                    <asp:ListItem Value="6">Tire</asp:ListItem>
                                    <asp:ListItem Value="0">Other</asp:ListItem>
                                </asp:CheckBoxList>
                          </div></div></div>
                      <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                   
                        <asp:Panel ID="PCheck" runat="server" Height="30px" BackColor="#3333CC" Width="99.5%"
                            Direction="LeftToRight" ForeColor="#FFFF99">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Literal ID="Literal1" Text="Initial Inspection:" runat="server"></asp:Literal>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="ImgAgree1" runat="server" ImageUrl="~/images/expand_blue.jpg"
                                        AlternateText="(Show Details...)" />
                                </div>
                                <div style="float: right; margin-right: 20px;">
                                    <asp:Label ID="lblAgree1" runat="server" Text="(View Details)"></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="PCheck1" runat="server" Height="0" BackColor="#FFFFEC" Width="99.3%"
                            BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" CssClass="myBody">
                            <div style="width: 100%; border: 1px solid #800000;">
                                <table width="99.5%">
                                    <tr>
                                        <td style="width: 100px;">
                                        </td>
                                        <td style="width: 300px;">
                                        </td>
                                        <td style="width: 100px;">
                                        </td>
                                        <td style="width: 300px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px;">
                                            <asp:Label ID="lblRemark1" runat="server" Text="Technical Remarks"></asp:Label>
                                        </td>
                                        <td colspan="3">
                                            <asp:TextBox ID="txtRemark1" MaxLength="200" TextMode="MultiLine" Width="99%" Height="100px"
                                                runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:Panel>
                        <ajax:CollapsiblePanelExtender ID="cpeDemo001" BehaviorID="cpeDemo001" runat="Server"
                            TargetControlID="PCheck1" ExpandControlID="PCheck" CollapseControlID="PCheck"
                            Collapsed="true" TextLabelID="lblAgree1" ImageControlID="ImgAgree1" ExpandedText="(Hide Details)"
                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                    </div></div></div>
                 
             <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                        <asp:Panel ID="PHeader01" runat="server" Height="30px" BackColor="#990000" Width="99.5%"
                            Direction="LeftToRight" ForeColor="#FFFF99">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Literal ID="Literal2" Text="Issue & Fast Repair Notes:" runat="server"></asp:Literal>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="ImgAgree01" runat="server" ImageUrl="~/images/expand_blue.jpg"
                                        AlternateText="(Show Details...)" />
                                </div>
                                <div style="float: right; margin-right: 20px;">
                                    <asp:Label ID="lblAgree01" runat="server" Text="(View Details)"></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="PDetail01" runat="server" Height="0" BackColor="#FFFFEC" Width="99.3%"
                            BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" CssClass="myBody">
                            <div style="width: 100%; border: 1px solid #800000;">
                                <asp:GridView ID="grdCodes" runat="server" CellPadding="4" Width="99.95%" ShowFooter="True"
                                    ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                    PageSize="2000" ForeColor="#333333">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Issue Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="50px" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Part No." SortExpression="ITCode" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblITCode" Text='<%# Bind("ITCode") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Part Name" SortExpression="ITName2" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblITName" Text='<%# Bind("ITName2") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotITName" Text="Total of Issue" runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="200px" />
                                            <ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Unit" SortExpression="Unitname2" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblUnit" Text='<%# bind("UnitName2") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Qty" SortExpression="Quan" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblQuan" Text='<%# bind("Quan") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" Text='<%# bind("Price") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmount" Text='<%# bind("Amount") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotAmount" Text='<%# TotalAmount %>' runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CC3300" ForeColor="White" VerticalAlign="Middle" HorizontalAlign="Center"
                                        Font-Bold="True" />
                                    <HeaderStyle BackColor="#CC3300" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <br />
                                <asp:GridView ID="GrdFastRepair" runat="server" CellPadding="4" Width="99.95%" ForeColor="#333333"
                                    ShowFooter="True" ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False"
                                    DataKeyNames="FNo" AllowPaging="false" PageSize="2000">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Repair Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="50px" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Item" SortExpression="Remark" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" Text='<%# Bind("Remark") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotITName" Text="Total of Fast Repair" runat="server"></asp:Label>
                                                <asp:Label ID="Label18" Text="Grand Total" runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="150px" />
                                            <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Invoice#" SortExpression="InvNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInvNo" Text='<%# Bind("InvNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Inv. Date" SortExpression="InvDate" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInvDate" Text='<%# bind("InvDate") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Qty" SortExpression="InvQty" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblInvQty" Text='<%# bind("InvQty") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" SortExpression="Am" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAm" Text='<%# bind("Am") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotAm" Text='<%# TotalAm %>' runat="server"></asp:Label><br />
                                                <asp:Label ID="lblTotAm2" Text='<%# TotalAm2 %>' runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                                        HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </div>
                        </asp:Panel>
                        <ajax:CollapsiblePanelExtender ID="cpeDemo01" BehaviorID="cpeDemo01" runat="Server"
                            TargetControlID="PDetail01" ExpandControlID="PHeader01" CollapseControlID="PHeader01"
                            Collapsed="true" TextLabelID="lblAgree01" ImageControlID="ImgAgree01" ExpandedText="(Hide Details)"
                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                 
                  </div></div></div>
                         <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
             
                        <asp:Panel ID="PHeader02" runat="server" Height="30px" BackColor="#006699" Width="99.5%"
                            Direction="LeftToRight" ForeColor="#FFFF99">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Literal ID="Literal3" Text="Used & Scerap Import Notes:" runat="server"></asp:Literal>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="ImgAgree02" runat="server" ImageUrl="~/images/expand_blue.jpg"
                                        AlternateText="(Show Details...)" />
                                </div>
                                <div style="float: right; margin-right: 20px;">
                                    <asp:Label ID="lblAgree02" runat="server" Text="(View Details)"></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="PDetail02" runat="server" Height="0" BackColor="#FFFFEC" Width="99.3%"
                            BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" CssClass="myBody">
                            <div style="width: 100%; border: 1px solid #800000;">
                                <asp:GridView ID="grdImport" runat="server" CellPadding="4" Width="99.95%" ShowFooter="True"
                                    ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                    PageSize="2000" ForeColor="#333333">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="50px" />
                                            <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Part No." SortExpression="ITCode" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblITCode" Text='<%# Bind("ITCode") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Part Name" SortExpression="ITName2" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblITName" Text='<%# Bind("ITName2") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotITName" Text="Total of Used Parts Import" runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="200px" />
                                            <ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Unit" SortExpression="Unitname2" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblUnit" Text='<%# bind("UnitName2") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Qty" SortExpression="Quan" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblQuan" Text='<%# bind("Quan") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" Text='<%# bind("Price") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="70px" />
                                            <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmount" Text='<%# bind("Amount") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:Label ID="lblTotAmount" Text='<%# TotalImportAmount %>' runat="server"></asp:Label>
                                            </FooterTemplate>
                                            <ControlStyle Width="80px" />
                                            <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#006699" ForeColor="White" VerticalAlign="Middle" HorizontalAlign="Center"
                                        Font-Bold="True" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
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
                        <ajax:CollapsiblePanelExtender ID="cpeDemo02" BehaviorID="cpeDemo02" runat="Server"
                            TargetControlID="PDetail02" ExpandControlID="PHeader02" CollapseControlID="PHeader02"
                            Collapsed="true" TextLabelID="lblAgree02" ImageControlID="ImgAgree02" ExpandedText="(Hide Details)"
                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                </div></div></div>
                    <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                   
                        <asp:Panel ID="PHeader03" runat="server" Height="30px" BackColor="#006666" Width="99.5%"
                            Direction="LeftToRight" ForeColor="#FFFF99">
                            <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                                <div style="float: left;">
                                    <asp:Literal ID="Literal4" Text="Technican Time Sheet:" runat="server"></asp:Literal>
                                </div>
                                <div style="float: right; vertical-align: middle;">
                                    <asp:ImageButton ID="ImgAgree03" runat="server" ImageUrl="~/images/expand_blue.jpg"
                                        AlternateText="(Show Details...)" />
                                </div>
                                <div style="float: right; margin-right: 20px;">
                                    <asp:Label ID="lblAgree03" runat="server" Text="(View Details)"></asp:Label>
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="PDetail03" runat="server" Height="0" BackColor="#FFFFEC" Width="99.3%"
                            BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" CssClass="myBody">
                            <div style="width: 100%; border: 1px solid #800000;">
                                <asp:GridView ID="grdTimeSheet" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                    Width="99.9%" OnRowCancelingEdit="grdTimeSheet_RowCancelingEdit" OnRowCommand="grdTimeSheet_RowCommand"
                                    OnRowDeleting="grdTimeSheet_RowDeleting">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="Delete Item"
                                                    ImageUrl="~/images/cross.png" OnClientClick='return confirm("Are You Sure Delete This Item?")' />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:ImageButton ID="btnInsert" runat="server" CommandName="Insert" ValidationGroup="2"
                                                    ToolTip="Add New Item" ImageUrl="~/images/add.png" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SNO" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="40px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Technical" Visible="true" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblTech" Text='<%# Bind("Name") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:DropDownList ID="ddlTech" runat="server" Width="180px" OnInit="ddlTech_Init" />
                                            </FooterTemplate>
                                            <ControlStyle Width="180px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Date" SortExpression="FDate" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFDate" Text='<%# Bind("FDate") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtFDate" MaxLength="100" runat="server" Width="80px"></asp:TextBox>
                                                <ajax:CalendarExtender ID="CalendarExtender1" runat="server" 
                                                    TargetControlID="txtFDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                                    PopupPosition="BottomLeft" />
                                            </FooterTemplate>
                                            <ControlStyle Width="80px"></ControlStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Start Time" SortExpression="FTime" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFTime" Text='<%# Bind("FTime") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                 <asp:TextBox ID="txtFTime" runat="server" Width="80px"></asp:TextBox>
                                            </FooterTemplate>
                                            <ControlStyle Width="80px"></ControlStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="End Time" SortExpression="ETime" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblETime" Text='<%# Bind("ETime") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox  ID="txtETime" runat="server" Width="80px"></asp:TextBox>
                                            </FooterTemplate>
                                            <ControlStyle Width="80px"></ControlStyle>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Hours" SortExpression="Hour" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblHourNo" Text='<%# Bind("Hour") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="60px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblPrice" Text='<%# Bind("Price") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="60px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="60px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Remark" SortExpression="Remark" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblRemark" Text='<%# Bind("Remark") %>' runat="server"></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="txtRemark" MaxLength="100" runat="server" Width="100px" />
                                            </FooterTemplate>
                                            <ControlStyle Width="100px" />
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                                        HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
                            </div>
                        </asp:Panel>
                        <ajax:CollapsiblePanelExtender ID="cpeDemo03" BehaviorID="cpeDemo03" runat="Server"
                            TargetControlID="PDetail03" ExpandControlID="PHeader03" CollapseControlID="PHeader03"
                            Collapsed="true" TextLabelID="lblAgree03" ImageControlID="ImgAgree03" ExpandedText="(Hide Details)"
                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                  </div></div></div>
                  
                    <div class="col-md-12 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                          <table width="50%" class="box-table-a" style="font-weight: bold">
                            <tbody>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" Text="Total of Issue Notes" runat="server"></asp:Label>      
                                </td>
                                <td>
                                    <asp:Label ID="TotIssue" Text="" runat="server"></asp:Label>      
                                </td>                                                        
                            </tr>                                                   
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" Text="Total of Fast Repair" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TotFast" Text="" runat="server"></asp:Label>      
                                </td>                                                        
                            </tr>                                                   
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" Text="Total of Import" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TotImport" Text="" runat="server"></asp:Label>      
                                </td>                                                        
                            </tr>                                                   
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" Text="Total of Time Sheet" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TotTime" Text="" runat="server"></asp:Label>      
                                </td>                                                        
                            </tr>                                                   
                            <tr>
                                <td>
                                    <asp:Label ID="Label18" Text="Total of Job Work" runat="server"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TotAll" Text="" runat="server"></asp:Label>      
                                </td>                                                        
                            </tr>                                                   
                             </tbody>
                          </table>                                                                                                                         
                  </div></div></div>
              
           
                <div style="text-align: right; width: 50%; float: right;">
                    <asp:Panel ID="Panel2" runat="server" Height="30px" BackColor="#5D7B9D" Width="99.5%"
                        Direction="LeftToRight" ForeColor="#FFFF99">
                        <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
                            <div style="float: left;">
                                Attach Files</div>
                            <div style="float: left; margin-right: 20px;">
                                <asp:Label ID="Label34" runat="server">(Show Details...)</asp:Label>
                            </div>
                            <div style="float: right; vertical-align: middle;">
                                <asp:ImageButton ID="Image1" runat="server" ImageUrl="~/images/expand_blue.jpg" AlternateText="(Show Details...)" />
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label>

                                    <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged">
                                        <asp:ListItem Value="0">Open</asp:ListItem>
                                        <asp:ListItem Value="1">Pause</asp:ListItem>
                                        <asp:ListItem Value="2">Close</asp:ListItem>
                                    </asp:DropDownList>

                                    <asp:TextBox ID="txtSearch" MaxLength="10" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:ImageButton ID="BtnFind" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                        ToolTip="Search for Job Work Data" OnClick="BtnFind_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label15" runat="server" Text="Order Type"></asp:Label>

                                    <asp:CheckBoxList ID="ChkRepairType" runat="server" RepeatColumns="6" Width="100%">
                                        <asp:ListItem Value="0">Outside Repair</asp:ListItem>
                                        <asp:ListItem Value="1">Routine Services</asp:ListItem>
                                        <asp:ListItem Value="2">Driver's Complaint</asp:ListItem>
                                        <asp:ListItem Value="3">Break Down</asp:ListItem>
                                        <asp:ListItem Value="4">Inspector</asp:ListItem>
                                        <asp:ListItem Value="5">WorkShop</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label2" runat="server" Text="Date In"></asp:Label>


                                    <asp:TextBox ID="txtVouDate" MaxLength="10" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtVouDate"
                                        Display="Dynamic" ErrorMessage="You Should Select Order Date" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="ValBirthDate2" runat="server" ControlToValidate="txtVouDate"
                                        CultureInvariantValues="true" Display="Dynamic" ErrorMessage="Order Date Should be Date Value"
                                        ForeColor="Red" Type="Date" ValidationGroup="1" SetFocusOnError="True" Operator="DataTypeCheck">*</asp:CompareValidator>
                                    <ajax:CalendarExtender ID="CalendarExtender1" runat="server" CssClass="MyCalendar"
                                        TargetControlID="txtVouDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                        PopupPosition="BottomLeft" />
                                    <asp:TextBox ID="txtVouTime" MaxLength="15" ReadOnly="true" CssClass="MouseStop form-control"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label6" runat="server" Text="Repair Req.#"></asp:Label>

                                    <asp:TextBox ID="txtRepairReq" MaxLength="10" runat="server" CssClass="form-control"
                                        AutoPostBack="True" OnTextChanged="txtRepairReq_TextChanged"></asp:TextBox>
                                    <asp:ImageButton ID="BtnFind2" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                        ToolTip="Search for Repair Request" OnClick="BtnFind2_Click" />
                                    <asp:RequiredFieldValidator ID="ValRepairReq" runat="server" ControlToValidate="txtRepairReq"
                                        Display="Dynamic" ErrorMessage="You should Enter Repair Request No." ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label5" runat="server" Text="Vehicle Type"></asp:Label>

                                    <asp:DropDownList ID="ddlVehType" CssClass="form-control" runat="server" Enabled="false"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlVehType_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlVehType"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="You Should Select Vechile Type" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label4" runat="server" Text="Car No."></asp:Label>

                                    <asp:TextBox ID="txtCarNo" MaxLength="15" CssClass="form-control" autocomplete="off" AutoPostBack="True" ReadOnly="true"
                                        runat="server"></asp:TextBox>
                                    <ajax:AutoCompleteExtender ID="AutoCompleteExtender03" runat="server" TargetControlID="txtCarNo"
                                        ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionCars20" OnClientItemSelected="Plate_itemSelected"
                                        MinimumPrefixLength="1" CompletionInterval="500" EnableCaching="true" CompletionSetCount="30"
                                        CompletionListCssClass="autocomplete_completionListElement" CompletionListItemCssClass="autocomplete_listItem"
                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" />
                                    <asp:ImageButton ID="BtnFindCar" runat="server" ValidationGroup="55" ImageUrl="~/images/zoom_16.png"
                                        ToolTip="Search for Car" OnClick="BtnFindCar_Click" Enabled="false" />
                                    <asp:DropDownList ID="ddlCar" CssClass="form-control" runat="server" AutoPostBack="True" Enabled="false"
                                        OnSelectedIndexChanged="ddlCar_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="ValCar" runat="server" ControlToValidate="ddlCar"
                                        InitialValue="-1" Display="Dynamic" ErrorMessage="You Should Select Car" ForeColor="Red"
                                        SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label11" runat="server" Text="Driver"></asp:Label>

                                    <asp:DropDownList ID="ddlDriver" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label9" runat="server" Text="K.M. Reading"></asp:Label>

                                    <asp:TextBox ID="txtKMReading" MaxLength="15" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label12" runat="server" Text="Last Reading"></asp:Label>

                                    <asp:TextBox ID="txtKMReading2" ReadOnly="true" CssClass="MouseStop form-control" MaxLength="15"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label13" runat="server" CssClass="form-control" Text="Formen"></asp:Label>

                                    <asp:DropDownList ID="ddlFormen" CssClass="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label35" runat="server" Text="Date Out"></asp:Label>

                                    <asp:TextBox ID="txtEndDateTime" ReadOnly="true" CssClass="MouseStop form-control"
                                        MaxLength="25" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label21" runat="server" Text="Work Request"></asp:Label>

                                    <asp:TextBox ID="txtWorkRequest" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label22" runat="server" Text="Work Done"></asp:Label>

                                    <asp:TextBox ID="txtWorkDone" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label7" runat="server" Text="Remark"></asp:Label>

                                    <asp:TextBox ID="txtRemark" MaxLength="300" TextMode="MultiLine" CssClass="form-control" Height="100px"
                                        runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label14" runat="server" Text="Fault Type"></asp:Label>

                                    <asp:CheckBoxList ID="ChkFaultType" runat="server" RepeatColumns="8" Width="100%">
                                        <asp:ListItem Value="0">Mechanical</asp:ListItem>
                                        <asp:ListItem Value="1">Electrical</asp:ListItem>
                                        <asp:ListItem Value="2">Denting</asp:ListItem>
                                        <asp:ListItem Value="3">Painting</asp:ListItem>
                                        <asp:ListItem Value="4">Welding</asp:ListItem>
                                        <asp:ListItem Value="5">Cooling</asp:ListItem>
                                        <asp:ListItem Value="6">Tire</asp:ListItem>
                                        <asp:ListItem Value="0">Other</asp:ListItem>
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                        </div>

                        <!--here edit-->
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Literal ID="Literal1" Text="Initial Inspection:" runat="server"></asp:Literal>
                                        <asp:Label ID="Label23" runat="server" Text="(View Details)"></asp:Label>
                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none;">
                                    <asp:Panel ID="PCheck" runat="server">
                                        <asp:Panel ID="PCheck1" runat="server">

                                            <ajax:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" BehaviorID="cpeDemo001" runat="Server"
                                                TargetControlID="PCheck1" ExpandControlID="PCheck" CollapseControlID="PCheck"
                                                Collapsed="true" TextLabelID="lblAgree1" ImageControlID="ImgAgree1" ExpandedText="(Hide Details)"
                                                CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                                                CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                                        </asp:Panel>
                                        <div class="form-row">
                                            <div class="form-group col-md-3">
                                                <asp:Label ID="lblRemark1" runat="server" Text="Technical Remarks"></asp:Label>
                                            </div>
                                            <div class="form-group col-md-8">
                                                <asp:TextBox ID="txtRemark1" MaxLength="200" TextMode="MultiLine" CssClass="form-control"
                                                    runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-1"></div>

                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                        <!--  Ankur Kumar  -->
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Literal ID="Literal2" Text="Issue & Fast Repair Notes:" runat="server"></asp:Literal>
                                        <asp:Label ID="lblAgree01" runat="server" Text="(View Details)"></asp:Label>
                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none;">
                                    <%--   <asp:Panel ID="PHeader01" runat="server">--%>
                                    <asp:Panel ID="PDetail01" runat="server">
                                        <div class="table table-responsive">
                                            <asp:GridView ID="grdCodes" runat="server" CellPadding="4" Width="99.95%" ShowFooter="True"
                                                ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                                PageSize="2000" ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Issue Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="50px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Part No." SortExpression="ITCode" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblITCode" Text='<%# Bind("ITCode") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="100px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Part Name" SortExpression="ITName2" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblITName" Text='<%# Bind("ITName2") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotITName" Text="Total of Issue" runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="200px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Unit" SortExpression="Unitname2" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblUnit" Text='<%# Bind("UnitName2") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Qty" SortExpression="Quan" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblQuan" Text='<%# Bind("Quan") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblPrice" Text='<%# Bind("Price") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotAmount" Text='<%# TotalAmount %>' runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#CC3300" ForeColor="White" VerticalAlign="Middle" HorizontalAlign="Center"
                                                    Font-Bold="True" />
                                                <HeaderStyle BackColor="#CC3300" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                <SortedDescendingHeaderStyle BackColor="#820000" />
                                            </asp:GridView>

                                            <asp:GridView ID="GrdFastRepair" runat="server" CellPadding="4" Width="99.95%" ForeColor="#333333"
                                                ShowFooter="True" ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False"
                                                DataKeyNames="FNo" AllowPaging="false" PageSize="2000">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Repair Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="50px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Item" SortExpression="Remark" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblRemark" Text='<%# Bind("Remark") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotITName" Text="Total of Fast Repair" runat="server"></asp:Label>
                                                            <asp:Label ID="Label18" Text="Grand Total" runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="150px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="150px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Invoice#" SortExpression="InvNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblInvNo" Text='<%# Bind("InvNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Inv. Date" SortExpression="InvDate" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblInvDate" Text='<%# Bind("InvDate") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Qty" SortExpression="InvQty" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblInvQty" Text='<%# Bind("InvQty") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Amount" SortExpression="Am" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblAm" Text='<%# Bind("Am") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotAm" Text='<%# TotalAm %>' runat="server"></asp:Label><br />
                                                            <asp:Label ID="lblTotAm2" Text='<%# TotalAm2 %>' runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                                                    HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                <SortedDescendingHeaderStyle BackColor="#820000" />
                                            </asp:GridView>
                                        </div>
                                        <ajax:CollapsiblePanelExtender ID="cpeDemo01" BehaviorID="cpeDemo01" runat="Server"
                                            TargetControlID="PDetail01" ExpandControlID="PHeader01" CollapseControlID="PHeader01"
                                            Collapsed="true" TextLabelID="lblAgree01" ImageControlID="ImgAgree01" ExpandedText="(Hide Details)"
                                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                                    </asp:Panel>


                                    <%-- </asp:Panel>--%>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Literal ID="Literal3" Text="Used & Scerap Import Notes:" runat="server"></asp:Literal>
                                        <asp:Label ID="lblAgree02" runat="server" Text="(View Details)"></asp:Label>
                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none;">
                                    <%-- <asp:Panel ID="PHeader02" runat="server">
                                     
                                    </asp:Panel>--%>
                                    <asp:Panel ID="PDetail02" runat="server" Height="0" BackColor="#FFFFEC" Width="99.3%"
                                        BorderColor="Maroon" BorderStyle="Solid" BorderWidth="1px" CssClass="myBody">
                                        <div class="table table-responsive">
                                            <asp:GridView ID="grdImport" runat="server" CellPadding="4" Width="99.95%" ShowFooter="True"
                                                ViewStateMode="Enabled" GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                                PageSize="2000" ForeColor="#333333">
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Note" SortExpression="VouNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouNo" Text='<%# Bind("VouNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date" SortExpression="VouDate" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblVouDate" Text='<%# Bind("VouDate") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SL" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="50px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="50px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Part No." SortExpression="ITCode" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblITCode" Text='<%# Bind("ITCode") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="100px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Part Name" SortExpression="ITName2" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblITName" Text='<%# Bind("ITName2") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotITName" Text="Total of Used Parts Import" runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="200px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Unit" SortExpression="Unitname2" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblUnit" Text='<%# Bind("UnitName2") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Qty" SortExpression="Quan" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblQuan" Text='<%# Bind("Quan") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblPrice" Text='<%# Bind("Price") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="70px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="70px"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:Label ID="lblTotAmount" Text='<%# TotalImportAmount %>' runat="server"></asp:Label>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px" />
                                                        <ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EditRowStyle BackColor="#999999" />
                                                <FooterStyle BackColor="#006699" ForeColor="White" VerticalAlign="Middle" HorizontalAlign="Center"
                                                    Font-Bold="True" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                            </asp:GridView>
                                        </div>
                                        <ajax:CollapsiblePanelExtender ID="cpeDemo02" BehaviorID="cpeDemo02" runat="Server"
                                            TargetControlID="PDetail02" ExpandControlID="PHeader02" CollapseControlID="PHeader02"
                                            Collapsed="true" TextLabelID="lblAgree02" ImageControlID="ImgAgree02" ExpandedText="(Hide Details)"
                                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                                    </asp:Panel>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Literal ID="Literal4" Text="Technican Time Sheet:" runat="server"></asp:Literal>
                                        <asp:Label ID="lblAgree03" runat="server" Text="(View Details)"></asp:Label>
                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none;">
                                    <%-- <asp:Panel ID="PHeader03" runat="server">
                                        
                                    </asp:Panel>--%>
                                    <asp:Panel ID="PDetail03" runat="server">
                                        <div class="table table-responsive">
                                            <asp:GridView ID="grdTimeSheet" runat="server" CellPadding="4" ForeColor="#333333" ShowFooter="True"
                                                GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo"
                                                Width="99.9%" OnRowCancelingEdit="grdTimeSheet_RowCancelingEdit" OnRowCommand="grdTimeSheet_RowCommand"
                                                OnRowDeleting="grdTimeSheet_RowDeleting">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="Delete Item"
                                                                ImageUrl="~/images/cross.png" OnClientClick='return confirm("Are You Sure Delete This Item?")' />
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:ImageButton ID="btnInsert" runat="server" CommandName="Insert" ValidationGroup="2"
                                                                ToolTip="Add New Item" ImageUrl="~/images/add.png" />
                                                        </FooterTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SNO" SortExpression="FNo" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFNo" Text='<%# Bind("FNo") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="40px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Technical" Visible="true" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblTech" Text='<%# Bind("Name") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:DropDownList ID="ddlTech" runat="server" Width="180px" OnInit="ddlTech_Init" />
                                                        </FooterTemplate>
                                                        <ControlStyle Width="180px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Date" SortExpression="FDate" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFDate" Text='<%# Bind("FDate") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtFDate" MaxLength="100" runat="server" Width="80px"></asp:TextBox>
                                                            <ajax:CalendarExtender ID="CalendarExtender1" runat="server"
                                                                TargetControlID="txtFDate" Format="dd/MM/yyyy" Animated="true" FirstDayOfWeek="Saturday"
                                                                PopupPosition="BottomLeft" />
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px"></ControlStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Start Time" SortExpression="FTime" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblFTime" Text='<%# Bind("FTime") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtFTime" runat="server" Width="80px"></asp:TextBox>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px"></ControlStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="End Time" SortExpression="ETime" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblETime" Text='<%# Bind("ETime") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtETime" runat="server" Width="80px"></asp:TextBox>
                                                        </FooterTemplate>
                                                        <ControlStyle Width="80px"></ControlStyle>
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Hours" SortExpression="Hour" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblHourNo" Text='<%# Bind("Hour") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="60px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Price" SortExpression="Price" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblPrice" Text='<%# Bind("Price") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="60px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Amount" SortExpression="Amount" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblAmount" Text='<%# Bind("Amount") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <ControlStyle Width="60px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Remark" SortExpression="Remark" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblRemark" Text='<%# Bind("Remark") %>' runat="server"></asp:Label>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtRemark" MaxLength="100" runat="server" Width="100px" />
                                                        </FooterTemplate>
                                                        <ControlStyle Width="100px" />
                                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" VerticalAlign="Middle"
                                                    HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#E3EAEB" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                                            </asp:GridView>
                                        </div>
                                        <ajax:CollapsiblePanelExtender ID="cpeDemo03" BehaviorID="cpeDemo03" runat="Server"
                                            TargetControlID="PDetail03" ExpandControlID="PHeader03" CollapseControlID="PHeader03"
                                            Collapsed="true" TextLabelID="lblAgree03" ImageControlID="ImgAgree03" ExpandedText="(Hide Details)"
                                            CollapsedText="(Show Details)" ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg"
                                            CollapsedImage="~/images/expand.jpg" SuppressPostBack="true" />
                                    </asp:Panel>

                                </div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-row">
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label8" Text="Total of Issue Notes" runat="server"></asp:Label>

                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="TotIssue" Text="" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label19" Text="Total of Fast Repair" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="TotFast" Text="" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label20" Text="Total of Import" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="TotImport" Text="" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label10" Text="Total of Time Sheet" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="TotTime" Text="" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="Label18" Text="Total of Job Work" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12">
                                    <asp:Label ID="TotAll" Text="" CssClass="form-control" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12"></div>
                                <div class="form-group col-md-3 col-sm-12 col-xs-12"></div>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">
                                        <asp:Label ID="Label34" runat="server">(Show Details...)</asp:Label>

                                    </h4>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body" style="display: none;">
                                    <asp:Panel ID="Panel2" runat="server">
                                        <asp:Panel ID="Panel1" runat="server">
                                <div class="table table-responsive">
                                    <asp:GridView ID="grdAttach" runat="server" CellPadding="4" ForeColor="#333333" ShowHeader="False"
                                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="FNo" Width="99%">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="Delete File"
                                                        ImageUrl="~/images/cross.png" OnClientClick='return confirm("Delete tis File ... Are you Sure?")' />
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
                                </div>
                               
                                            <ajax:CollapsiblePanelExtender ID="cpeDemo" BehaviorID="cpeDemo" runat="Server" TargetControlID="Panel1"
                                ExpandControlID="Panel2" CollapseControlID="Panel2" Collapsed="True" TextLabelID="Label34"
                                ImageControlID="Image1" ExpandedText="(Hide Details)" CollapsedText="(Show Details)"
                                ExpandDirection="Vertical" ExpandedImage="~/images/collapse.jpg" CollapsedImage="~/images/expand.jpg"
                                SuppressPostBack="true" />
                            </asp:Panel>
                           
                                    <div class="for-row">
                                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                                            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="form-group col-md-6 col-sm-12 col-xs-12">
                                            <asp:ImageButton ID="BtnAttach" runat="server" AlternateText="Attach" CommandName="Attach"
                                                CssClass="ops" ImageUrl="~/images/attach1.png" ToolTip="Attach File" ValidationGroup="1" />
                                        </div>
                                    </div>
                              
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label16" runat="server" Text="User Name"></asp:Label>

                                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                        CssClass="MouseStop form-control" Enabled="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="Label17" runat="server" Text="Date"></asp:Label>

                                    <asp:TextBox ID="txtUserDate" runat="server" MaxLength="50" BackColor="#E8E8E8"
                                        CssClass="MouseStop form-control" Enabled="false">                                                               
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="lblReason" Visible="false" runat="server" Text="Reason of Edit"></asp:Label>

                                    <asp:TextBox ID="txtReason" Visible="false" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ValReason" Enabled="false" runat="server" ControlToValidate="txtReason"
                                        ErrorMessage="You should Enter Reason of Edit or Delete Order" ForeColor="Red"
                                        Display="Dynamic" SetFocusOnError="True" ValidationGroup="10">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>

                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <asp:ImageButton ID="BtnNew" runat="server" AlternateText="New" CommandName="New"
                                        ImageUrl="~/images/data add.png" CssClass="ops" ToolTip="Add New Job Work Order"
                                        ValidationGroup="1" OnClientClick='return confirm("Adding New Job Work Order...Are You Sure?")'
                                        OnClick="BtnNew_Click" />
                                    <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="Edit" CommandName="Edit"
                                        ImageUrl="~/images/edit2.png" CssClass="ops" ToolTip="Edit Job Work Order"
                                        Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                                    <asp:ImageButton ID="BtnClear" runat="server" AlternateText="Clear" CommandName="Clear"
                                        ImageUrl="~/images/clear all.png" CssClass="ops" ToolTip="Clear Form Fields"
                                        OnClick="BtnClear_Click" />
                                    <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="Delete" CommandName="Delete"
                                        ImageUrl="~/images/delete2.png" CssClass="ops" ToolTip="Delete Job Work Order"
                                        OnClientClick='return confirm("Delete This Job Work Order...Are You Sure?")'
                                        OnClick="BtnDelete_Click" />
                                    <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="Find" CommandName="Find"
                                        ImageUrl="~/images/data search.png" CssClass="ops" ToolTip="Search for Job Work Order"
                                        OnClick="BtnSearch_Click" />
                                    <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="Print" CommandName="Print"
                                        ImageUrl="~/images/print.png" ValidationGroup="1" CssClass="ops" ToolTip="Print Job Work Order"
                                        OnClick="BtnPrint_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<<<<<<< HEAD
            </div>

        </div>
    </div>

=======
              <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:Label ID="Label16" runat="server" Text="User Name"></asp:Label>
                       
                            <asp:TextBox ID="txtUserName"  runat="server" MaxLength="50" BackColor="#E8E8E8"
                                CssClass="MouseStop form-control" Enabled="false"></asp:TextBox>
                    </div></div></div>
                          <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:Label ID="Label17" runat="server" Text="Date"></asp:Label>
                      
                            <asp:TextBox ID="txtUserDate"  runat="server" MaxLength="50" BackColor="#E8E8E8"
                                CssClass="MouseStop form-control" Enabled="false">                                                               
                            </asp:TextBox>
                       </div></div></div>
                        <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:Label ID="lblReason" Visible="false" runat="server" Text="Reason of Edit"></asp:Label>
                    
                            <asp:TextBox ID="txtReason"  Visible="false" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValReason" Enabled="false" runat="server" ControlToValidate="txtReason"
                                ErrorMessage="You should Enter Reason of Edit or Delete Order" ForeColor="Red"
                                Display="Dynamic" SetFocusOnError="True" ValidationGroup="10">*</asp:RequiredFieldValidator>
                      </div></div></div>
                   <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:Label ID="LblCodesResult" runat="server" ForeColor="#FF0066"></asp:Label>
                       
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="1" />
                       </div></div></div>
                     <div class="col-md-6 col-sm-12 col-xs-12" >
                            <div class="form-group form-float">
                                <div class="form-line">
                            <asp:ImageButton ID="BtnNew" runat="server" AlternateText="New" CommandName="New"
                                ImageUrl="~/images/insource_641.png" CssClass="ops" ToolTip="Add New Job Work Order"
                                ValidationGroup="1" OnClientClick='return confirm("Adding New Job Work Order...Are You Sure?")'
                                OnClick="BtnNew_Click" />
                            <asp:ImageButton ID="BtnEdit" runat="server" AlternateText="Edit" CommandName="Edit"
                                ImageUrl="~/images/draw_pen_641.png" CssClass="ops" ToolTip="Edit Job Work Order"
                                Width="64px" ValidationGroup="1" OnClick="BtnEdit_Click" />
                            <asp:ImageButton ID="BtnClear" runat="server" AlternateText="Clear" CommandName="Clear"
                                ImageUrl="~/images/erasure_641.png" CssClass="ops" ToolTip="Clear Form Fields"
                                OnClick="BtnClear_Click" />
                            <asp:ImageButton ID="BtnDelete" runat="server" AlternateText="Delete" CommandName="Delete"
                                ImageUrl="~/images/cut_641.png" CssClass="ops" ToolTip="Delete Job Work Order"
                                OnClientClick='return confirm("Delete This Job Work Order...Are You Sure?")'
                                OnClick="BtnDelete_Click" />
                            <asp:ImageButton ID="BtnSearch" runat="server" AlternateText="Find" CommandName="Find"
                                ImageUrl="~/images/binoculars_641.png" CssClass="ops" ToolTip="Search for Job Work Order"
                                OnClick="BtnSearch_Click" />
                            <asp:ImageButton ID="BtnPrint" runat="server" AlternateText="Print" CommandName="Print"
                                ImageUrl="~/images/print_641.png" ValidationGroup="1" CssClass="ops" ToolTip="Print Job Work Order"
                                OnClick="BtnPrint_Click" />
                       </div></div></div></div></div></div>
            </fieldset>
        </div>
        <br />
    
>>>>>>> f7d6e6644e253f5297713e7f0e965f9863598ce7
</asp:Content>
