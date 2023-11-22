<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Unit21_Assignment23.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="position-relative py-4 py-xl-5" style="margin-top: -23px; height: 94vh">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card mb-5">
                        <div class="card-body d-flex flex-column align-items-center">
                            <form class="text-center" method="post">
                                <div class="mb-3">
                                    <asp:TextBox ID="tbUsername" runat="server" class="form-control" type="username" placeholder="Username"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:TextBox ID="tbPassword" runat="server" class="form-control" type="password" placeholder="Password"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Login" class="btn btn-primary d-block w-100" type="submit" OnClick="btnSubmit_Click" />
                                </div>

                                <p class="text-muted" style="margin-bottom: 5px;">Forgot your password?</p>
                                <asp:DynamicHyperLink ID="dhlNewAcc" runat="server" NavigateUrl="~/Registration.aspx" Target="_parent">Don&#39;t have an account? Create one!</asp:DynamicHyperLink>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
