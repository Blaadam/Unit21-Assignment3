<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Unit21_Assignment23.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="carousel slide" data-bs-ride="carousel" id="carousel-1" style="margin: 0; padding: 0;">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="w-100 d-block" src="../assets/img/Warfield.PNG" style="height: 91vh;"></div>
            <div class="carousel-item">
                <img class="w-100 d-block" src="../assets/img/LeagueOfHeroes.PNG" style="height: 91vh; width: 100%:"></div>
            <div class="carousel-item">
                <img class="w-100 d-block" src="../assets/img/Project-X.PNG" style="height: 91vh; width: 100%:"></div>
        </div>
        <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span><span class="visually-hidden">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span><span class="visually-hidden">Next</span></a></div>
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carousel-1" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#carousel-1" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#carousel-1" data-bs-slide-to="2"></button>
        </div>
    </div>
</asp:Content>
