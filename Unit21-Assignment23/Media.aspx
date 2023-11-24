<%@ Page Title="Media" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Media.aspx.cs" Inherits="Unit21_Assignment23.Media" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="padding: 2px 0;">
        <div class="col" style="justify-content: space-evenly; display: flex;">
            <img style="height: auto; width: 25%; aspect-ratio: 16/9;">
            <img style="height: auto; width: 25%; aspect-ratio: 16/9;">
            <img style="height: auto; width: 25%; aspect-ratio: 16/9;">

            <div style="width: 25%; height: auto; aspect-ratio: 16/9; float: none; clear: both; margin: 2px auto;">
                <embed
                    src="https://www.youtube.com/embed/PSwqYEetOGM?si=O4Gq2svfRhvqmNBt"
                    wmode="transparent"
                    type="video/mp4"
                    height="100%"
                    width="100%"
                    allow="autoplay; encrypted-media; picture-in-picture"
                    title="Keyboard Cat">
            </div>
        </div>
    </div>
</asp:Content>
