<%@ Page Title="" Language="C#" MasterPageFile="~/Edil.Master" AutoEventWireup="true" CodeBehind="Pagamenti.aspx.cs" Inherits="DipendentiEdili.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-4">
                <div>
                    <h3>Dal</h3>
                    <input type="date" runat="server" id="Dal" />
                </div>
                <div>
                    <h3>Al</h3>
                    <input type="date" runat="server" id="Al" />
                </div>
                <div>
                    <h3>Importo</h3>
                    <asp:TextBox ID="Importo" runat="server"></asp:TextBox>
                </div>
                <div>
                    <h3>Tipo Remunerazione</h3>
                    <asp:TextBox ID="Remunerazione" runat="server"></asp:TextBox>
                </div>
                <div>
                    <h3>ID Dipendente</h3>
                    <asp:TextBox ID="Dipendente" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="RegistraPagamento" runat="server" Text="Registra Pagamento" OnClick="RegistraPagamento_Click" />
                </div>
            </div>
            <div class="col-8">
                <div class="text-center">
                    <h1>Lista Pagamenti</h1>
                </div>
                <asp:GridView ID="GridView2" AutoGenerateColumns="false" ItemType="DipendentiEdili.Pagamenti" CssClass="form-control d-flex justify-content-center" runat="server">
                    <Columns>
                        <asp:TemplateField ItemStyle-CssClass="me-5" HeaderText="Dal ">
                            <ItemTemplate>
                                <p class="me-5 text-center"><%# Item.Dal  %></p>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Al">
                            <ItemTemplate>
                                <p class="me-5 text-center"><%# Item.Al  %></p>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Importo">
                            <ItemTemplate>
                                <p class="me-5 text-center"><%# Item.Importo  %></p>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tipo Remunereazione">
                            <ItemTemplate>
                                <p class="me-5 text-center"><%# Item.TipoRemunerazione  %></p>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID Dipendente">
                            <ItemTemplate>
                                <p class="me-5 text-center"><%# Item.IDDipendente  %></p>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
