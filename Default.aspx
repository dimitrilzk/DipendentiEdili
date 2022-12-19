<%@ Page Title="" Language="C#" MasterPageFile="~/Edil.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DipendentiEdili.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row text-center">
            <h1>Lista Dipendenti</h1>
        </div>
        <div class="row">
            <asp:GridView ID="GridView1" AutoGenerateColumns="false" ItemType="DipendentiEdili.Dipendente" CssClass="form-control d-flex justify-content-center" runat="server">
                <Columns>
                    <asp:TemplateField ItemStyle-CssClass="me-5" HeaderText="Nome" >
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Nome  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cognome">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Cognome  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Indirizzo">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Indirizzo  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Codice Fiscale">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.CF  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sosato">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Sposato  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Figli a carico">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Figli  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mansione">
                        <ItemTemplate>
                            <p class="me-5 text-center"><%# Item.Mansione  %></p>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
