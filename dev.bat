@ECHO OFF
node esbuild.js dev & 
cd "electron" && yarn dev && cd ".."


