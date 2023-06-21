﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage2.aspx.cs" Inherits="CeritaKita.Views.HomePage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beranda - CeritaKita</title>
    <link rel="stylesheet" href="style.css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-page md:flex h-screen flex-row">
        <!-- Sidebar Mobile -->
        <div class="fixed w-screen bg-cyan-100 flex justify-between md:hidden border-b-2 border-sky-900 drop-shadow-lg">
            <img src="/Images/Barbie.jpeg" class="h-14 w-14 rounded-full p-2 mt-1 object-left">
            <a href="index.html">
                <img src="/Images/logo.png" class="w-36 p-2">
            </a>
            <button><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="button-mobile w-16 h-16 p-2 hover:bg-teal-200">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 6.75h16.5M3.75 12h16.5M12 17.25h8.25" />
                </svg>
            </button>
        </div>

        <!-- Sidebar Dekstop-->
        <div
            class="sidebar-dekstop fixed inset-y-0 w-48 md:w-64 border-r-4 border-slate-200 drop-shadow-2xl md:translate-x-0 transform-translate-x-full transition duration-200 ease-in-out h-screen overflow-y-auto">
            <a href="index.html">
                <img src="/Images/logo.png" class="p-8">
            </a>
            <nav>
                <a href="HomePage2.aspx"
                    class="flex justify-center p-6 bg-sky-200 text-sky-900 rounded-r-full hover:transition hover:ease-in-out hover:font-bold">Beranda</a>
                <a href="Explore.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Jelajahi</a>
                <a href="#" data-modal-target="defaultModal" data-modal-toggle="defaultModal"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Unggah
                </a>
                <a href="AboutUs.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Tentang Kami</a>
                <a href="Update.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Pengaturan</a>

                <asp:Button ID="logoutButton" class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold w-full" runat="server" Text="Keluar" OnClick="logoutButton_Click" />
                
            </nav>
            <!-- Sidebar Profile -->
            <div class="absolute bottom-0 left-0 right-0">
                <div class="flex inset-0 p-4 sm:p-5 border-t-4 border-slate-200 justify-center">
                    <div class="flex gap-3">
                        <a href="#">
                            <img src="/Images/Barbie.jpeg"
                                class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-sky-200"/>
                        </a>
                        <div class="leading-4 sm:leading-5">
                            <asp:Label class="text-xs sm:text-sm flex" ID="profileName" runat="server" Text=""></asp:Label> 
                            <asp:Label class="text-xs sm:text-sm text-red-500" ID="profileDesc" runat="server" Text=""></asp:Label> 
                           <%-- <p class="text-xs sm:text-sm text-red-500">|</p>
                            <asp:Label class="text-xs sm:text-sm text-red-500" ID="profileAge" runat="server" Text=""></asp:Label> --%>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Konten -->
        <div class="content flex-1 pt-14 md:py-0 md:ml-64">

            <!-- Header -->
            <div class="flex flex-1 flex-col gap-4 lg:flex-row p-7 lg:p-14 justify-between">
                <h1 class="text-2xl md:text-3xl font-semibold">Halo <asp:Label ID="LabelGreeting" class="text-2xl md:text-3xl font-semibold" runat="server" Text=""></asp:Label>, apa yang ingin kamu cari ?</h1>

                <!-- Dropdown -->
                <%--<button id="dropdownDefaultButton" data-dropdown-toggle="dropdown"
                    class="hover:bg-teal-200 font-medium rounded-lg w-28 md:w-32 lg:w-40 text-xs md:text-sm lg:text-base px-4 py-2.5 text-center inline-flex items-center border border-sky-900 max-h-10 lg:max-h-12"
                    type="button">Terbaru<svg class="ml-3 md:ml-5 lg:ml-10 lg:w-10" aria-hidden="true" fill="none"
                        stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7">
                        </path>
                    </svg></button>
                <div id="dropdown"
                    class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-28 md:w-32 lg:w-40 border border-sky-900">--%>

                    <%-- DropDownList ASP --%>
                    <asp:DropDownList class="urutanDropDown hover:bg-teal-200 font-medium rounded-lg w-28 md:w-32 lg:w-40 text-xs md:text-sm lg:text-base px-4 py-2.5 text-center inline-flex items-center border border-sky-900 max-h-10 lg:max-h-12" ID="DropDownListSortBy" runat="server">
                           <%-- <asp:ListItem class="p-4 m-2 rounded-lg bg-gray-300 text-neutral-900 text-xs md:text-sm lg:text-base" Value="Terpopuler"></asp:ListItem>
                            <asp:ListItem class="p-4 m-2 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base" Value="Terbaru"></asp:ListItem>--%>

                            <asp:ListItem Value="Terpopuler"></asp:ListItem>
                            <asp:ListItem Value="Terbaru"></asp:ListItem>
                    </asp:DropDownList>

                    <%--<ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a
                                class="block px-4 py-2 m-1 rounded-lg bg-gray-300 text-neutral-900 text-xs md:text-sm lg:text-base">Terbaru</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block px-4 py-2 m-1 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base">Terpopuler</a>
                        </li>
                    </ul>--%>
                <%--</div>--%>
            </div>

            <!-- Main modal -->
            <div id="defaultModal" tabindex="-1" aria-hidden="true"
                class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative w-full max-w-2xl max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-white rounded-lg shadow">
                        <!-- Modal header -->
                        <div class="flex justify-between p-4 border-b border-black rounded-t">
                            <h3 class="items-center text-2xl font-semibold text-gray-900">
                                Post
                            </h3>
                            <button type="button"
                                class="text-black bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white"
                                data-modal-hide="defaultModal">
                                <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                        d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                        clip-rule="evenodd"></path>
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <div class="p-6">
                            <!-- Isi -->
                            <div class="mb-6">
                                <p class="mb-2 text-base text-black">
                                    Isi:
                                </p>
                                <asp:TextBox ID="isiPostTextBox" class="block w-full p-4 text-black border border-black rounded-lg bg-white sm:text-md focus:border-teal-200" runat="server" placeholder="Menurut kalian..."></asp:TextBox>

                                <%--<input type="text" id="large-input" placeholder="Menurut kalian..."
                                    class="block w-full p-4 text-black border border-black rounded-lg bg-white sm:text-md focus:border-teal-200" />--%>
                            </div>

                            <!-- Kategori -->
                            <div class="mb-6">
                                <p class="mb-2 text-base text-black">
                                    Kategori:
                                </p>
                                <%--<button id="dropdownDefaultButtonA" data-dropdown-toggle="dropdownA"
                                    class="hover:bg-teal-200 rounded-lg w-28 md:w-32 lg:w-40 text-xs md:text-sm lg:text-base justify-between px-4 py-2 text-center inline-flex items-center border border-black"
                                    type="button">Kesehatan<svg class="w-4 h-4 ml-2" aria-hidden="true" fill="none"
                                        stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M19 9l-7 7-7-7"></path>
                                    </svg>
                                </button>--%>
                            </div>

                            <%-- DropDownList Kategori ASP --%>
                            <asp:DropDownList class="hover:bg-teal-200 rounded-lg w-28 md:w-32 lg:w-40 text-xs md:text-sm lg:text-base justify-between px-4 py-2 text-center inline-flex items-center border border-black" ID="DropDownListCategory" runat="server"></asp:DropDownList>

                            <!-- Dropdown -->
                            <%--<div id="dropdownA"
                                class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-28 md:w-32 lg:w-40 border border-black">--%>

                                <%--<ul class="py-2 text-sm text-gray-700 dark:text-gray-200"
                                    aria-labelledby="dropdownDefaultButtonA">
                                    <li>
                                        <a
                                            class="block px-4 py-2 m-1 rounded-lg bg-gray-300 text-neutral-900 text-xs md:text-sm lg:text-base">Kesehatan</a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            class="block px-4 py-2 m-1 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base">Teknologi</a>
                                    </li>
                                    <li>
                                        <a href="#"
                                            class="block px-4 py-2 m-1 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base">Sains</a>
                                    </li>
                                </ul>--%>
                            <%--</div>--%>


                            <!-- Thread -->
                            <form>
                                <label class="block">
                                    <span class="mb-2 block text-base font-medium text-black">Thread:</span>
                                    <%--<input type="text" placeholder="ex: #CeritaKita #DuniaKerja"
                                        class="w-1/2 border border-black rounded-lg focus:border-teal-200" />--%>
                                     <asp:TextBox ID="ThreadTextBox" runat="server" class="w-1/2 border border-black rounded-lg focus:border-teal-200" placeholder="cth: #CeritaKita #DuniaKerja"></asp:TextBox>
                                </label>   
                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="flex justify-center p-6 border-t border-black rounded-b">
                            <asp:Button class="text-black font-medium rounded-lg text-xl px-5 py-2.5 text-center bg-teal-200 hover:bg-teal-400" ID="CreateButton" runat="server" Text="Create" OnClick="CreateButton_Click1" />
                            <%--<button data-modal-hide="defaultModal" type="button"
                                class="text-black font-medium rounded-lg text-xl px-5 py-2.5 text-center bg-teal-200 hover:bg-teal-400" onclick="createButton_Click">Create</button>--%>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Main Page -->
            <div class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 pl-7 pr-7 pb-7 lg:pl-14 lg:pr-14 lg:pb-14 gap-4">
                <% foreach(var x in posts) { %>
                    <article id="content" class="w-full border border-black rounded-lg fade-in">
                        <!-- Profile -->
                        <div class="flex p-4 sm:p-5 justify-between">
                            <div class="flex gap-3">
                                <a href="#">
                                    <img src="/Images/user.png"
                                        class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                                </a>
                                <div class="leading-4 sm:leading-5">
                                    <a href="#" class="flex text-sm items-center">
                                        <%= x.user.username %>
                                    </a>
                                    <p class="text-xs sm:text-sm text-red-500"><%= x.user.gender.name %> | <%= CalculateAge(x.user.dob) %> tahun</p>
                                </div>
                            </div>
                            <div class="pt-3">
                                <p class="text-xs text-gray-500">Mar 23, 2023</p>
                            </div>
                        </div>

                        <!-- Body -->
                        <div class="pr-4 pl-4 pb-4 sm:pr-5 sm:pl-5 sm:pb-5">
                            <p class="text-xs sm:text-sm text-black text-justify"><%=x.isiPost%></p> <!--isi postnya !-->
                        </div>
                        <div class="pr-4 pl-4 pb-4 sm:pr-5 sm:pl-5 sm:pb-5">
                            <p class="<text-xs sm:text-sm text-justify text-black"><%= x.thread %></p>  <!--isi thread !-->
                        </div>

                        <!-- Reactions -->
                        <div class="flex justify-between pr-4 pl-4 pb-4 sm:pr-5 sm:pl-5 sm:pb-5">
                            <div class="flex gap-7 pt-1 pb-1">
                                <a href="#" class="w-5 sm:w-6" onchange="likeBtn()">
                                    <img src="/Images/heart.png" id="heart">
                                </a>
                                <a href="#" class="w-5 sm:w-6">
                                    <img src="/Images/comment.png">
                                </a>
                                <a href="#" class="w-5 sm:w-6">
                                    <img src="/Images/share.png">
                                </a>
                            </div>
                            <div
                                class="rounded-lg p-2 bg-sky-200 border-sky-200 text-sky-600 hover:bg-cyan-600 hover:text-white">
                                <a href="Content.aspx?id=<%= x.id %>">
                                    <p class="text-xs">Baca Selengkapnya</p>
                                </a>
                            </div>
                        </div>
                    </article>
               <% } %>
            </div>

        </div>
    </div>
            
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.js"></script>
    <script src="Script.js"></script>
</body>
</html>
