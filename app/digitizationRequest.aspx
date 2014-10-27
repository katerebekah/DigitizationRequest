<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="digitizationRequest.aspx.cs" Inherits="app.digitizationRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="page-header">
            <h1>image database <small>digitization request form</small></h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="lblItemName" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemName">Item Name</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblItemDescription" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemDescription">Description</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemDescription" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="1000" Rows="3" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblItemHistoricalNote" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemHistoricalNote">Historical Note</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemHistoricalNote" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="1000" Rows="3" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblItemPlace" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemPlace">Place of Original</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemPlace" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblItemDate" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemDate">Date of Original</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemDate" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblItemNotes" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtItemNotes">Item Notes</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtItemNotes" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="1000" Rows="3" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionName" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="ddlCollectionName">Collection Name</asp:Label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddlCollectionName" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionAccessionNumber" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtCollectionAccessionNumber">Accession Number</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCollectionAccessionNumber" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionOwningInstitution" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="ddlCollectionOwningInstitution">Owning Institution</asp:Label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddlCollectionOwningInstitution" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionFindingAidURL" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtCollectionFindingAidURL">Finding Aid URL</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCollectionFindingAidURL" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionStorageLocation" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtCollectionStorageLocation">Storage Location</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCollectionStorageLocation" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionMicrofilmNumber" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtCollectionMicrofilmNumber">Microfilm Number</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCollectionMicrofilmNumber" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblCollectionNotes" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtCollectionNotes">Collection Notes</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCollectionNotes" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblRequestBy" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtRequestBy">Request By</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtRequestBy" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblRequestDate" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtRequestDate">Request Date</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtRequestDate" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblRequestNotes" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="txtRequestNotes">Request Notes</asp:Label>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtRequestNotes" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-8 col-md-offset-4">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
