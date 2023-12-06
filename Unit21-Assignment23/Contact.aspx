<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Unit21_Assignment23.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-primary" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Contact Us</p>
    <section class="position-relative py-4 py-xl-5" style="margin-top: -23px; height: 94vh">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card mb-5">
                        <div class="card-body d-flex flex-column align-items-center">
                            <form class="text-center" method="post">
                                <!-- User Details -->
                                <div class="mb-3" style="justify-content: center">
                                    <asp:TextBox ID="tbName" runat="server" class="form-control" type="username" placeholder="Name" MaxLength="125"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Field Required" ControlToValidate="tbName"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="tbEmail" runat="server" class="form-control" type="email" placeholder="Email" MaxLength="125"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Field Required" ControlToValidate="tbEmail"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="tbMessage" runat="server" class="form-control" type="message" placeholder="Message" TextMode="MultiLine" MaxLength="125" Style="height: 400px; width: 300px; text-align: left; vertical-align: top;"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ErrorMessage="Field Required" ControlToValidate="tbMessage"></asp:RequiredFieldValidator>
                                </div>

                                <!-- Control Button -->
                                <div class="mb-3">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-primary d-block w-100" type="submit" OnClick="btnSubmit_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
