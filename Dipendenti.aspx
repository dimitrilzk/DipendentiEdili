<%@ Page Title="" Language="C#" MasterPageFile="~/Edil.Master" AutoEventWireup="true" CodeBehind="Dipendenti.aspx.cs" Inherits="DipendentiEdili.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div>
                <h3>Nome</h3>
                <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
            </div>
            <div>
                <h3>Cognome</h3>
                <asp:TextBox ID="Cognome" runat="server"></asp:TextBox>
            </div>
            <div>
                <h3>Indirizzo</h3>
                <asp:TextBox ID="Indirizzo" runat="server"></asp:TextBox>
            </div>
            <div>
                <h3>Codice Fiscale</h3>
                <asp:TextBox ID="CF" runat="server"></asp:TextBox>
            </div>
            <div>
                <h3>Sposato</h3>
                <asp:CheckBox ID="Sposato" runat="server" />
            </div>
            <div>
                <h3>Figli </h3>
                <asp:TextBox ID="Figli" runat="server"></asp:TextBox>
            </div>
            <div>
                <h3>Mansione </h3>
                <asp:TextBox ID="Mansione" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="RegistraDipendnete" runat="server" Text="Registra Dipendente" OnClick="RegistraDipendnete_Click" />
            </div>
        </div>
    </div>
</asp:Content>
