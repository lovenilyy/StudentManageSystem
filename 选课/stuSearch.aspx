﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPageSea.master" AutoEventWireup="true" CodeFile="stuSearch.aspx.cs" Inherits="学生管理_stuSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .title{
        margin-left:100px;
    }
    .row{
        width: 95%;
        height: 30px;
        margin-left:100px;
    }
    .stuInfo {
    padding: 20px;
    width: 24%;
    float: left;
    margin-top: 15px;
    margin-right: 2%;
    border: 1px solid #808080;
}

    .stuInfo .tit {
        font-size: 25px;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .stuInfo .detail {
        font-size: 14px;
        color: #808080;
        margin-right: 5px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">信息查询</div>
    <div class="line"></div>
    <div class="inform">
        <div class="row">
            <asp:DropDownList ID="DDL_Stu" runat="server">
                <asp:ListItem Value="-1">--查询方式--</asp:ListItem>
                <asp:ListItem Value="id">按学号查询</asp:ListItem>
                <asp:ListItem Value="Name">按姓名查询</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TB_StuNo" runat="server"></asp:TextBox>
            <asp:Button ID="BT_Que" runat="server" Text="查询" OnClick="BT_Que_Click" />
        </div>
        <div class="row">
            <asp:Repeater ID="rpt" runat="server">
                <ItemTemplate>
                    <div class="stuInfo">
                        <span class="tit">
                            <img style="width: 30px" src="../images/<%#FormatPic(Eval("pic").ToString()) %>" />
                            <%#Eval("Name") %>
                        </span>
                        <br />
                        <span class="detail">学号：<%#Eval("id") %></span><br /><span class="detail">出生日期：<%#FormatDate(Eval("csrq").ToString()) %></span></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

