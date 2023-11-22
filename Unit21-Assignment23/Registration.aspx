<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Unit21_Assignment23.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-primary" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Welcome to Tiger Games</p>
    <section class="position-relative py-4 py-xl-5" style="margin-top: -23px; height: 94vh">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card mb-5">
                        <div class="card-body d-flex flex-column align-items-center">
                            <form class="text-center" method="post">
                                <!-- Users Name -->
                                <div class="mb-3">
                                    <asp:TextBox ID="tbFirstName" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="tbSurname" runat="server" class="form-control" placeholder="Surname"></asp:TextBox>
                                </div>

                                <!-- Users Email -->
                                <div class="mb-3">
                                    <asp:TextBox ID="tbEmail" runat="server" class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbConfirmEmail" runat="server" class="form-control" placeholder="Confirm Email" TextMode="Email"></asp:TextBox>
                                </div>

                                <!-- Users Username -->
                                <div class="mb-3">
                                    <asp:TextBox ID="tbUsername" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                                </div>

                                <!-- Users Password -->
                                <div class="mb-3">
                                    <asp:TextBox ID="tbPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbConfirmPass" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <!-- Users Address Info -->
                                <div class="mb-3">
                                    <asp:TextBox ID="tbAddressL1" runat="server" class="form-control" placeholder="Address Line 1"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbAddressL2" runat="server" class="form-control" placeholder="Address Line 2"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbAddressL3" runat="server" class="form-control" placeholder="Address Line 3"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbAddressL4" runat="server" class="form-control" placeholder="Address Line 4"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:TextBox ID="tbPostcode" runat="server" class= placeholder="Postcode"></asp:TextBox>
                                </div>

                                <!-- Buttons -->

                                <div class="mb-3" style="display: flex; justify-content: space-around;">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Login  " Width="48%" Style="text-align: center;" class="btn btn-primary d-block" type="submit" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="48%" Style="text-align: center;" class="btn btn-primary d-block" type="submit" OnClick="btnClear_Click" />
                                </div>

                                <p class="text-muted" style="margin-bottom: 5px;">Forgot your password?</p>
                                <asp:DynamicHyperLink ID="dhlNewAcc" runat="server" NavigateUrl="~/Registration.aspx" Target="_parent">Don't have an account? Create one!</asp:DynamicHyperLink>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
