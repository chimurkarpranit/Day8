<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Day_8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><centre>Repeator Control And DataList Control</centre></h1>
   
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 116">
        <asp:ListItem Value="0">Please Select</asp:ListItem>
            <asp:ListItem Value="FirstName">Name </asp:ListItem>
            <asp:ListItem Value="Salary">Salary</asp:ListItem>
            <asp:ListItem Value="BirthDate">DOB</asp:ListItem>
           
    </asp:DropDownList>


    <asp:Button ID="Button1" runat="server" OnClick=" Button1_Display" Text="Display Records" />
    <br /><br />

    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        
          <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th scope="col" style="width: 80px">
                    Name
                </th>
                <th scope="col" style="width: 280px">
                    Address
                </th>
                <th scope="col" style="width: 100px">
                    HomePhone
                </th>
                 <th scope="col" style="width: 100px">
                    Salary
                </th>
                 <th scope="col" style="width: 170px">
                    BirthDate
                </th>
            </tr>
    </HeaderTemplate>
            
            <ItemTemplate>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' />
            </td>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="lblHomePhone" runat="server" Text='<%# Eval("HomePhone") %>' />
            </td>
            <td>
                <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' />
            </td>
            <td>
                <asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' />
            </td>
        </tr>
    </ItemTemplate>
            
            <AlternatingItemTemplate>
                <tr>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.FirstName")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.Address")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.HomePhone")%>
                    </td>
                     <td>
                        <%#DataBinder.Eval(Container,"DataItem.Salary")%>
                    </td>
                     <td>
                        <%#DataBinder.Eval(Container,"DataItem.Birthdate")%>
                    </td>
                </tr>
            </AlternatingItemTemplate>
           
            
        </asp:Repeater>
   
   <br />
    
    <br />
     
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
   
        <HeaderTemplate>
        <table cellspacing="0" rules="all" border="1">
            <tr>
                <th scope="col" style="width: 80px">
                    Name
                </th>
                <th scope="col" style="width: 280px">
                    Address
                </th>
                <th scope="col" style="width: 100px">
                    HomePhone
                </th>
                 <th scope="col" style="width: 100px">
                    Salary
                </th>
                 <th scope="col" style="width: 170px">
                    BirthDate
                </th>
            </tr>
            <br /><br />
    </HeaderTemplate>
          <ItemTemplate>
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text='<%# Eval("FirstName") %>' />
            </td>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="lblHomePhone" runat="server" Text='<%# Eval("HomePhone") %>' />
            </td>
            <td>
                <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("Salary") %>' />
            </td>
            <td>
                <asp:Label ID="lblBirthday" runat="server" Text='<%# Eval("BirthDate") %>' />
            </td>
        </tr>
    </ItemTemplate>
            
            <AlternatingItemTemplate>
                <tr>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.FirstName")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.Address")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container,"DataItem.HomePhone")%>
                    </td>
                     <td>
                        <%#DataBinder.Eval(Container,"DataItem.Salary")%>
                    </td>
                     <td>
                        <%#DataBinder.Eval(Container,"DataItem.Birthdate")%>
                    </td>
                </tr>
            </AlternatingItemTemplate>
       

    </asp:DataList>
   
    <table id="Paging" runat="server">  
  <tr>  
    <td>  
        <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="First"   
            onclick="Button2_Click" style="height: 26px"   
                     /></td>  
        
            <td>  
                <asp:Button ID="Button4" runat="server" Font-Bold="true" Text="Next" onclick="Button3_Click"   
                     /></td>  
                
    </tr>  
   </table>  
   
    
</asp:Content>
