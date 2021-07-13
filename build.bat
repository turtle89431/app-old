@ECHO OFF
node esbuild.js prod & 
cd "electron" && yarn  buildwindows && cd ".."