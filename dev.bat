@ECHO OFF
start node esbuild.js dev
cd electron
start yarn dev
cd ..
