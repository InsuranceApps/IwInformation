<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilterPage.aspx.cs" Inherits="IwInfoWeb.MyPages.FilterPage" Async="true" OnLoadComplete="Page_LoadComplete" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Extra Information Services</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style type="text/css">
        
            .title {               
              background-color:azure;
              height:50px;
            } 
          .printselection {
            background-color:azure;
             height:100px;
            
          }          
          ImageButton {
           justify-content: center;
            align-items: center;
         }
           .radio input {
               transform: scale(2);
               margin-right: 10px;                
               align-items: normal;
               vertical-align:middle;
           }
            .BusyLabel {
                font-size: medium;
                color: #800000;
                background-color: #FFFFFF;
            }
        </style>

    <script type="text/javascript">
        function showWorkingLabel() {
            // Assuming WorkingLabel is the ID of your ASP.NET Label control
            var workingLabel = document.getElementById('<%= WorkingLabel.ClientID %>');
            if (workingLabel) {
                workingLabel.style.display = 'block';
            }
        }

        function hideWorkingLabel() {
            // Assuming WorkingLabel is the ID of your ASP.NET Label control
            var workingLabel = document.getElementById('<%= WorkingLabel.ClientID %>');
            if (workingLabel) {
                workingLabel.style.display = 'none';
            }
        }
    </script>

</head>
<body style="font-size: x-large">
    <form id="form1" runat="server">
        
        <div class="title"> Επιλογή Εκτύπωσης</div>
        
        <div class="printselection">        
            <div>
                <asp:RadioButton ID="Active" Text="Οχήματα ανά Κάλυψη" GroupName="a" AutoPostBack="true" Font-Size="Medium" Checked="true" 
                    runat="server" OnCheckedChanged="Active_CheckedChanged" />
            </div>
           
           <br/>
            <div>
                <asp:RadioButton ID="ActivePerAgent" Text="Οχήματα ανά Κάλυψη/Συνεργάτη &nbsp;" GroupName="a" AutoPostBack="true" Font-Size="Medium" 
                    runat="server" OnCheckedChanged="Active_CheckedChanged"/>
           
                <asp:DropDownList ID="AgentsDropDown" runat="server" Height="21px" Width="168px" Visible="false">
                </asp:DropDownList>
            </div>  
        </div>

        <div class="BusyLabel">
             <asp:Label ID="WorkingLabel" runat="server" Text="Working.Pls Wait....."  Style="display: none;"></asp:Label>
        </div>

        <div style=" margin-left: 200px;">
           
             <asp:ImageButton ID="Apply" runat="server"  Height="33px" ImageUrl="~/images/Button-Ok-icon.png" ToolTip="Εφαρμογή Φίλτρων" Width="47px" 
                 style="text-align: center" OnClick="Apply_Click" OnClientClick="showWorkingLabel();"/> 
        </div>       
      
        <asp:DataList ID="ListView" runat="server" 
            BorderColor="Black"
            BorderWidth="1px"
            CellPadding="1"
            CellSpacing="1"
            RepeatDirection="Vertical"
            RepeatLayout="flow"
            RepeatColumns="15"      
            HorizontalAlign="Left"
            ShowHeader="True"
            ShowFooter="False">
      
        <ItemTemplate>
        <div>
            <h4 style="margin-top: 0; margin-bottom: 1px;margin-right: 5px;">Είδος κάλυψης: <%# Eval("CoverType") %></h4>            
             <p style="margin-top: 0; margin-bottom: 5px;margin-right: 5px;">Αριθμός Συμβολαίων: <%# string.Format("{0:N0}", Eval("PolicyCount")) %></p>
             <p style="margin-top: 0; margin-bottom: 5px;margin-right: 5px;">Καθαρά Ασφάλιστρα: <%# string.Format("{0:N0}", Eval("NetPremiumSum")) %></p>
            <hr />
        </div>
           
    </ItemTemplate>


        </asp:DataList>
        
    </form>
</body>
</html>
