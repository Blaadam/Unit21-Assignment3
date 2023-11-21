<%@ Page Title="Games" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="Unit21_Assignment23.Games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-primary" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Our Games</p>
    <div class="container" style="/*margin: 15px 15px 15px 15px; */width: 100%; margin-top: 8px; text-align: center; /*margin-right: 0px; *//*margin-left: 0px; *//*padding-left: 0px; */padding-right: 12px;">
        <div class="row" style="margin-bottom: 10px; width: 100%; text-align: center;">
            <div class="col-md-6" style="text-align: center; width: 50%;">
                <p class="text-primary GameTitle" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">League of Heroes</p>
                <img class="GameImage" src="assets/img/LeagueOfHeroes.PNG" style="width: 75%; height: auto; aspect-ratio: 16/9;" width="318" height="80">
                <p class="GameDescription" style="width: 100%; text-align: left;">League of Heroes is a strategic masterpiece in the world of real-time strategy (RTS) gaming. It's your chance to command an army, build a civilization, and lead your heroes to glory. In League of Heroes, your wits and tactics are your greatest weapons.</p>
                <p class="text-secondary GameFeatures" style="width: 100%; color: #023E7D; text-align: left;">Epic Battles, Heroic Leaders, Base Building, Alliance Warfare, Diplomacy and Trade, Research and Development</p>
                <p class="text-secondary GameMinReq" style="width: 100%; color: #023E7D; text-align: left;">
                    Minimum Requirements:<br>
                    OS: Windows 10<br>
                    Processor: Intel Core i5<br>
                    Memory: 8 GB RAM<br>
                    Graphics: NVIDIA GeForce GTX 960<br>
                    DirectX: Version 11<br>
                    Network: Broadband Internet connection
                </p>
                <p class="GameRecReq" style="width: 100%; color: #0353A4; text-align: left;">
                    Recommended Requirements:<br>
                    OS: Windows 10<br>
                    Processor: Intel Core i7<br>
                    Memory: 16 GB RAM<br>
                    Graphics: NVIDIA GeForce RTX 2080<br>
                    DirectX: Version 12<br>
                    Network: Broadband Internet connection
                </p>
                <div style="width: 100%; height: auto; aspect-ratio: 16/9; float: none; clear: both; margin: 2px auto;">
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
            <div class="col-md-6" style="text-align: center; width: 50%;">
                <p class="text-primary GameTitle" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Warfield</p>
                <img class="GameImage" src="assets/img/Warfield.PNG" style="width: 75%; height: auto; aspect-ratio: 16/9;" width="318" height="80">
                <p class="GameDescription" style="width: 100%; text-align: left;">Warfield is an adrenaline-pumping first-person shooter (FPS) game that immerses you in the heart of intense battlefields. Get ready to experience the ultimate combat simulation and put your skills to the test. In Warfield, every bullet counts, and teamwork is crucial for victory.</p>
                <p class="text-secondary GameFeatures" style="width: 100%; color: #023E7D; text-align: left;">Realistic Combat, Multiplayer Mayhem, Wide Arsenal, Stunning maps, Clan Warfare, Regular Updates</p>
                <p class="text-secondary GameMinReq" style="width: 100%; color: #023E7D; text-align: left;">
                    Minimum Requirements:<br>
                    OS: Windows 10<br>
                    Processor: Intel Core i5<br>
                    Memory: 8 GB RAM<br>
                    Graphics: NVIDIA GeForce GTX 960<br>
                    DirectX: Version 11<br>
                    Network: Broadband Internet connection
                </p>
                <p class="GameRecReq" style="width: 100%; color: #0353A4; text-align: left;">
                    Recommended Requirements:<br>
                    OS: Windows 10<br>
                    Processor: Intel Core i7<br>
                    Memory: 16 GB RAM<br>
                    Graphics: NVIDIA GeForce RTX 2080<br>
                    DirectX: Version 12<br>
                    Network: Broadband Internet connection
                </p>
                <div style="width: 100%; height: auto; aspect-ratio: 16/9; float: none; clear: both; margin: 2px auto;">
                    <embed
                        src="https://www.youtube.com/embed/uXgmr7i4fMo?si=jIlNUiE6IuwmMfiC"
                        wmode="transparent"
                        type="video/mp4"
                        height="100%"
                        width="100%"
                        allow="autoplay; encrypted-media; picture-in-picture"
                        title="Keyboard Cat">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <p class="text-primary GameTitle" style="text-align: center; font-weight: bold; font-size: 26px; margin-top: 8px; margin-bottom: 8px; width: 100%; padding-right: 0px; margin-right: 16px; margin-left: 0px;">Project X</p>
                <div class="row" style="width: 100%;">
                    <div class="col-md-12" style="width: 50%;">
                        <img class="GameImage" src="assets/img/Project-X.PNG" style="width: 100%; height: 100%;">
                    </div>
                    <div class="col" style="width: 50%; padding-left: 0px; padding-right: 0px;">
                        <p class="GameDescription" style="width: 100%; text-align: left; margin-bottom: 5px;">This is a top-secret game which is currently being beta tested.&nbsp;Here is a video of our progress:</p>

                        <div style="width: 100%; height: auto; aspect-ratio: 16/9; float: none; clear: both; margin: 2px auto;">
                            <embed
                                src="https://www.youtube.com/embed/zvrRCBlTmDE?si=oyHR_aamav_oBV5u"
                                wmode="transparent"
                                type="video/mp4"
                                height="100%"
                                width="100%"
                                allow="autoplay; encrypted-media; picture-in-picture"
                                title="Keyboard Cat">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
