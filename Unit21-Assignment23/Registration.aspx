<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Unit21_Assignment23.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-primary" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Welcome to Tiger Games</p>
    <section class="position-relative py-4 py-xl-5" style="margin-top: -23px; height: auto">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card mb-5">
                        <div class="card-body d-flex flex-column align-items-center">

                            <form class="text-center" method="post">
                                <!-- Users Name -->
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbFirstName" runat="server" class="form-control" placeholder="First Name" MaxLength="15"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Field Required" ControlToValidate="tbFirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbSurname" runat="server" class="form-control" placeholder="Surname"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvSurname" runat="server" ErrorMessage="Field Required" ControlToValidate="tbSurname" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <!-- Users Email -->
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Email" TextMode="Email" MaxLength="40"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Not a valid email" ControlToValidate="tbEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbConfirmEmail" runat="server" class="form-control" placeholder="Confirm Email" TextMode="Email" MaxLength="40"></asp:TextBox>
                                    <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Email does not math" ControlToCompare="tbEmail" ControlToValidate="tbConfirmEmail" Display="Dynamic"></asp:CompareValidator>
                                </div>

                                <!-- Users Username -->
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbUsername" runat="server" class="form-control" placeholder="Username" MaxLength="21"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Field Required" ControlToValidate="tbUsername" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <!-- Users Password -->
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password" MaxLength="50"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="Minimum eight characters, at least one uppercase letter, one lowercase letter and one number" Display="Dynamic" ControlToValidate="tbPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbConfirmPass" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password" MaxLength="50"></asp:TextBox>
                                    <asp:CompareValidator ID="cvConfirmPass" runat="server" ErrorMessage="Email does not math" ControlToCompare="tbPassword" ControlToValidate="tbConfirmPass" Display="Dynamic"></asp:CompareValidator>
                                </div>

                                <!-- Users Address Info -->
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbAddressL1" runat="server" class="form-control" placeholder="Address Line 1" MaxLength="21"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddressL1" runat="server" ErrorMessage="Field Required" ControlToValidate="tbAddressL1" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbAddressL2" runat="server" class="form-control" placeholder="Address Line 2" MaxLength="21"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddressL2" runat="server" ErrorMessage="Field Required" ControlToValidate="tbAddressL2" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbAddressL3" runat="server" class="form-control" placeholder="Address Line 3" MaxLength="21"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddressL3" runat="server" ErrorMessage="Field Required" ControlToValidate="tbAddressL3" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%">
                                    <asp:TextBox ID="tbAddressL4" runat="server" class="form-control" placeholder="Address Line 4" MaxLength="21"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvAddressL4" runat="server" ErrorMessage="Field Required" ControlToValidate="tbAddressL4" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>
                                <div class="mb-3" style="max-width: 300px; width: 100%; width: 100%">
                                    <asp:TextBox ID="tbPostcode" runat="server" class="form-control" placeholder="Postcode" MaxLength="7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPostcode" runat="server" ErrorMessage="Field Required" ControlToValidate="tbPostcode" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <!-- Buttons -->

                                <div class="mb-3" style="display: flex; justify-content: space-around; max-width: 300px; width: 100%">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Register" Width="48%" class="btn btn-primary d-block" type="submit" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="48%" Style="text-align: center;" class="btn btn-primary d-block" type="submit" OnClick="btnClear_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
