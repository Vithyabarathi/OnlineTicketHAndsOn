<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineTicketUI.aspx.cs" Inherits="OnlineTIcketHandsOn.OnlineTicketUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OnlineTicketManagementSystem</title>
    <style>
    .tablesize {
            width: 18%;
            height: 400px;
            margin-left: 30px;
        }
        .auto-style1 {
            width: 40%;
            height: 413px;
            margin-left: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="BookingId"></asp:Label></td>
                    <td> <asp:TextBox ID="txtbookingId" runat="server" Width="277px"></asp:TextBox></td>
                     <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" Height="43px" Width="120px" /></td>
                    </tr>
                 <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Source"></asp:Label></td>
                    <td> <asp:TextBox ID="txtsource" runat="server" Width="277px"></asp:TextBox></td>
                     
                    </tr>

                 <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Destination"></asp:Label></td>
                    <td> <asp:TextBox ID="txtdestination" runat="server" Width="277px"></asp:TextBox></td>
                     <td><asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" Height="44px" Width="122px" /></td>
                    </tr>
                 <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Date"></asp:Label></td>
                    <td> <asp:TextBox ID="txtdate" runat="server" Width="277px"></asp:TextBox></td>
                      
                    </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Time"></asp:Label></td>
                    <td> <asp:TextBox ID="txttime" runat="server" Width="277px"></asp:TextBox></td>
                      <td><asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" Height="40px" Width="116px" /></td>
                    </tr>
                  <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="NumberOfPerson"></asp:Label></td>
                    <td> <asp:TextBox ID="txtnumberofperson" runat="server" Width="274px"></asp:TextBox></td>
                    
                    </tr>
                 <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="SeatNumber"></asp:Label></td>
                    <td> <asp:TextBox ID="txtseatnumber" runat="server" Width="277px"></asp:TextBox></td>
                     <td><asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" Height="41px" Width="116px" /></td>
                    </tr>
                               
            </table>
           
            <asp:Label ID="lblresult" runat="server" Text="Label"></asp:Label>

            <asp:GridView ID="gvDisplay" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
                       
                        
                 
