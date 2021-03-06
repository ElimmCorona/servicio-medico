<!doctype html>
<!--
  Material Design Lite
  Copyright 2015 Google Inc. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->
<%@page contentType="text/html" pageEncoding="ISO-8859-1" session="true"%>
<%
        HttpSession ses = request.getSession();
       
       String usuario = (String)request.getAttribute("usr");
%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Doctor</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="images/favicon.png">

    <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->
    <!--
    <link rel="canonical" href="http://www.example.com/">
    -->

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.cyan-light_blue.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
  </head>
  <body>
    <div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header">
      <header class="demo-header mdl-layout__header mdl-color--grey-100 mdl-color-text--grey-600">
        <div class="mdl-layout__header-row">
          <span class="mdl-layout-title">Agregar Doctor</span>
          <div class="mdl-layout-spacer"></div>
          <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="hdrbtn">
            <i class="material-icons">more_vert</i>
          </button>
          <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="hdrbtn">
            <li class="mdl-menu__item" ><a href="nosotros.jsp">Nosotros</a></li>
            <li class="mdl-menu__item">Nuestra Pagina</li>
          </ul>
        </div>
      </header>
      <div class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
        <header class="demo-drawer-header">
          <div class="demo-avatar-dropdown">
              <span><%out.print("<a>"+usuario+"</a>");%></span>
            <div class="mdl-layout-spacer"></div>
          </div>
        </header>
        <nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
          <a class="mdl-navigation__link" href="consulta.jsp">Consulta</a>
          <a class="mdl-navigation__link" href="agregarDoc.jsp">Agregar Doctor</a>
          <a class="mdl-navigation__link" href="agregarPac.jsp">Agregar Paciente</a>
          <%-- <a class="mdl-navigation__link" href="bitacora.jsp">bitacora</a>--%>
          <a class="mdl-navigation__link" href="index.html">salir</a>
          <div class="mdl-layout-spacer"></div>
          
        </nav>
      </div>
      <main class="mdl-layout__content mdl-color--grey-100">
          <form action="AgregarDoc" method="post">
              <br>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="text" id="nombreD" name="nombreD">
                  <label class="mdl-textfield__label" for="nombreD">Nombre del Doctor</label>
                </div> &nbsp;
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="text" id="nusuario" name="nusuario">
                  <label class="mdl-textfield__label" for="nusuario">Usuario</label>
                </div> &nbsp;
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="password" id="ncontra" name="ncontra">
                  <label class="mdl-textfield__label" for="ncontra">Contraseņa</label>
                </div> &nbsp;<br>

                <a>Genero</a>&nbsp; 
                <label class = "mdl-radio mdl-js-radio mdl-js-ripple-effect" for = "opcion1">
                  <input type = "radio" id = "opcion1" name = "generoDoc" value="hombre" 
                     class = "mdl-radio__button" checked>
                  <span class = "mdl-radio__label">Hombre</span>
               </label>&nbsp; 
                <label class = "mdl-radio mdl-js-radio mdl-js-ripple-effect" 
                  for = "opcion2">
                  <input type = "radio" id = "opcion2" name = "generoDoc" value="mujer"
                     class = "mdl-radio__button" >
                  <span class = "mdl-radio__label">Mujer</span>
                </label>
               <br>
               <br>
               <p>Dias de trabajo</p>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="lunes">
                  <input type="checkbox" id="lunes" class="mdl-checkbox__input" name="dias" value="lunes"/>
                  <span class="mdl-checkbox__label">Lunes</span> 
                </label>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="martes">
                  <input type="checkbox" id="martes" class="mdl-checkbox__input" name="dias" value="martes"/>
                  <span class="mdl-checkbox__label">Martes</span> 
                </label>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="Miercoles">
                  <input type="checkbox" id="Miercoles" class="mdl-checkbox__input" name="dias" value="Miercoles"/>
                  <span class="mdl-checkbox__label">Miercoles</span> 
                </label>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="jueves">
                  <input type="checkbox" id="jueves" class="mdl-checkbox__input" name="dias" value="jueves"/>
                  <span class="mdl-checkbox__label">Jueves</span> 
                </label>
                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="Viernes">
                  <input type="checkbox" id="Viernes" class="mdl-checkbox__input" pattern="-?[0-9]*(\.[0-9]+)?" name="dias" value="Viernes"/>
                  <span class="mdl-checkbox__label">Viernes</span> <br></label>
                  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-col ">
                      <input class="mdl-textfield__input" type="text" id="hi" name="hi" style="left: 50%;">
                  <label class="mdl-textfield__label" for="hi">hora de inicio</label>
                </div> &nbsp;-
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--1-col">
                      <input class="mdl-textfield__input" type="text" id="hs" name="hs" style="left: 60%;">
                  <label class="mdl-textfield__label" for="hs">hora de salida</label> 
                </div> &nbsp; (24 Hrs)
                
               
                <br><br>
                &nbsp;<p>Contacto</p>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="text" id="correo" name="correo">
                  <label class="mdl-textfield__label" for="correo">Correo</label>
                </div> &nbsp;
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="text" id="telefono" name="telefono">
                  <label class="mdl-textfield__label" for="telefono">Telefono</label>
                </div> &nbsp;
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                  <input class="mdl-textfield__input" type="text" id="celular" name="celular">
                  <label class="mdl-textfield__label" for="celular">Celular</label>
                </div> &nbsp;<br>
                
               <input type="submit" value="Enviar" name="enviar" class="mdl-button mdl-js-button mdl-button--primary" />
               
                
              </form>
      </main>
    </div>
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  </body>
</html>
