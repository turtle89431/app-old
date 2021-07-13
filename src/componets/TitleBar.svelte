<script>
import { onMount } from "svelte";
const {ipcRenderer} = require("electron")
    let title
    onMount(()=>{
title = window.document.title
    })
    function close(){
        ipcRenderer.invoke("close")
    }
    function fullScreen(){
        ipcRenderer.invoke("fs")
    }
    function mini(){
        ipcRenderer.invoke("mins")
    }
</script>
<nav>
    <div id="titleshown"><img src="public/favicon.png" alt=""> {title}</div>
    <div id="buttons">
        <div id="minimize" on:click={mini}><span>&dash;</span></div>
        <div id="maximize" on:click={fullScreen}><span>&square;</span></div>
        <div id="quit" on:click={close}><span>&times;</span></div>
    </div>
  </nav>
<style>
    img{
        width:20px;
        height: 20px;
        padding-top: 2.5px;
    }
   nav {
  width: 100%;
  height: 30px;
  background-color: #333333;
  -webkit-app-region: drag;
  -webkit-user-select: none;
  z-index: 1;
}

nav #titleshown {
  width: 30%;
  height: 100%;
  line-height: 30px;
  color: #f7f7f7;
  float: left;
  padding: 0 0 0 1em;
}

nav #buttons {
  float: right;
  width: 150px;
  height: 100%;
  line-height: 30px;
  background-color: #222222;
  -webkit-app-region: no-drag;
}

nav #buttons #minimize,
nav #buttons #maximize,
nav #buttons #quit {
  float: left;
  height: 100%;
  width: 33%;
  text-align: center;
  color: #f7f7f7;
  cursor: default;
}

nav #buttons #minimize:hover {
  background-color: #333333;
}
nav #buttons #maximize:hover {
  background-color: #333333;
}
nav #buttons #quit:hover {
  background-color: #ff0000;
}
</style>