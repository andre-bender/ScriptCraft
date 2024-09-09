﻿# URL der Datei zum Herunterladen
$url = "https://customdesignservice.teamviewer.com/download/windows/v15/67md4xx/TeamViewerQS.exe"
$publicPicturesPath = [System.Environment]::GetFolderPath('CommonPictures')

# Icon in Base64 kodiert
$iconBase64 = 'AAABAAEAQEAAAAEAIAAoQgAAFgAAACgAAABAAAAAgAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAUgsFAVIKBShSCgWEUgoFy1IKBfNSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF81IKBctSCgWEUgoFJ1MLBQEDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAQAAUgoFD1IKBZRSCgX3UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBfdSCgWUUgoFDxMBAQAAAAAAAAAAAAAAAAASAQAAUgoGHFIKBc5SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBc5TCwUcEwEAAAAAAAADAAAAUgoFD1IKBc5SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoFzlIKBQ8DAAAAUwsFAVIKBZRSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgWUUwsFAVIKBSdSCgX3UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF91IKBShSCgWEUgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/VxsZ/3dUU/+gjY3/uq6t/8vCwf/VzMz/2tPT/9vU1P/Wzc3/zMLC/7uvr/+hj47/eVdW/1ccGv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgWEUgoFy1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1skIv+XgoH/zMPC/+7q6f/9/Pz///////////////////////////////////////////////////////39/f/u6ur/zcTE/5iEg/9bJSP/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoFy1IKBfNSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/akNB/7qtrf/v6+r//v7+/////////////////////////////////////////////////////////////////////////////////////////v7/7+vr/7uurv9sRUP/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBfNSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9gMC7/uq2s//Xz8///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vPz/7uurf9gMS//UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1MMB/+Ufn3/6+fn////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7Ojn/5WAf/9TDQj/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1khHv/AtLP//Pv7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+/v/wbW0/1kiH/9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/2U6OP/Z0tH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a0tL/ZTs5/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/2pDQv/k3t7//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+Te3v9qQ0L/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/2U6OP/j3t7/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////5N7e/2U7Of9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1khHv/Z0tH////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a0tL/WSIf/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1MMB//AtLP//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8G1tP9TDQj/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf+Vf37//Pv7///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8+/v/lX9+/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9gMC7/7Ofn/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zo5/9hMS//UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/uq2s////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u66t/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/akNB//Xz8v////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////Xz8/9qQ0H/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/7qurf//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u6+u/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1slIv/v6+v////////////////////////////////////////////////////////////////////////////////////////////9/Pz///////////////////////////////////////////////////////38/P///////////////////////////////////////////////////////////////////////////////////////////+/r6/9cJiP/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf+Yg4L///7+//////////////////////////////////////////////////////////////////////////////////z7+//Qx8b/u6yr//////////////////////////////////////////////////////+6q6r/0MfH//z7+////////////////////////////////////////////////////////////////////////////////////v7/mYSD/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/zcTD/////////////////////////////////////////////////////////////////////////////v39/9vU1P+HbWz/Uw8K/9fQz///////////////////////////////////////////////////////18/O/1MOCv+Ibm3/3NXU//79/f///////////////////////////////////////////////////////////////////////////83Ew/9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/VxwZ/+7q6v///////////////////////////////////////////////////////////////////v7/5uDg/5iDgv9UExD/UgoF/2Q3Nf/39fT///////////////////////////////////////////////////////f09P9kNjT/UgoF/1QUEP+YhIP/5uHg///+/v/////////////////////////////////////////////////////////////////u6ur/WB0a/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/3hWVf/9/Pz////////////////////////////////////////////////////////////u6ur/qJeW/1gfHP9SCgX/UgoF/1IKBf+gjY3/////////////////////////////////////////////////////////////////n42M/1IKBf9SCgX/UgoF/1kfHP+pmZj/7+vr/////////////////////////////////////////////////////////////f39/3lXVv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf+hj47///////////////////////////////////////////////////////Xy8v+3qqn/YDAu/1IKBf9SCgX/UgoF/1IKBf9SCwX/0cnJ/////////////////////////////////////////////////////////////////9HJyP9SCwX/UgoF/1IKBf9SCgX/UgoF/2AxL/+4qqr/9fLy//////////////////////////////////////////////////////+hj47/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/u6+u////////////////////////////////////////////+ff3/8W6uv9sRUP/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/VRUS/8W5uP/Sycn/0snJ/9LJyf/Sycn/0snJ/9LJyf/Sycn/0snJ/9LJyf/Sycn/0snJ/9LJyf/Fubj/VRYS/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/21HRf/GvLv/+fj4////////////////////////////////////////////u6+u/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/8zCwv/////////////////////////////////8+/v/0snI/3pbWv9SCwb/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgsG/3tdW//Sysr//Pz8/////////////////////////////////8zDwv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf/Vzc3///////////////////////7+/v/d1tb/inFw/1MOCf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/Uw4K/4tzcv/e19f//v7+///////////////////////Wzc3/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/29TU/////////////////+jk4/+ahYX/VRUR/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/VRYS/5uHh//p5OT/////////////////29TU/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/9vU1P/////////////////o5OP/moaF/1UVEf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1UVEf+ahYX/6OTj/////////////////9vU1P9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf/Wzc3///////////////////////7+/v/d1tb/iXBv/1MOCf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/Uw4J/4pwb//d1tb//v7+///////////////////////Wzc3/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/zMPC//////////////////////////////////z8+//Rycj/elta/1ILBv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCwb/eVpZ/9HJyP/8+/v/////////////////////////////////zMLC/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/7uvr/////////////////////////////////////////////n49//Furr/bEVE/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1UVEf/Et7b/0MfH/9DHx//Qx8f/0MfH/9DHx//Qx8f/0MfH/9DHx//Qx8f/0MfH/9DHx//Qx8f/w7e2/1UVEf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9rRUP/xbq6//n39////////////////////////////////////////////7uvr/9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf+hj47///////////////////////////////////////////////////////Ty8v+3qan/YDAu/1IKBf9SCgX/UgoF/1IKBf9SCwb/0snJ/////////////////////////////////////////////////////////////////9HJyf9SCwX/UgoF/1IKBf9SCgX/UgoF/2AwLv+3qqn/9fLy//////////////////////////////////////////////////////+hj47/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/eVdW//39/f///////////////////////////////////////////////////////////+7q6v+ol5b/WB8c/1IKBf9SCgX/UgoF/6COjf////////////////////////////////////////////////////////////////+fjYz/UgoF/1IKBf9SCgX/WB8c/6iXlv/u6ur////////////////////////////////////////////////////////////9/f3/eVdW/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1gdGv/u6ur///////////////////////////////////////////////////////////////////7+/+bg4P+XgoL/VBMQ/1IKBf9kNzX/9/X0///////////////////////////////////////////////////////39PT/ZDY1/1IKBf9UFBD/mIOC/+bg4P///v7/////////////////////////////////////////////////////////////////7urq/1ccGv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/zcTE/////////////////////////////////////////////////////////////////////////////v39/9vU1P+Hbm3/Uw8K/9fQz///////////////////////////////////////////////////////18/P/1MPCv+Ibm3/3NTU//79/f///////////////////////////////////////////////////////////////////////////83ExP9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/5mEg////v7//////////////////////////////////////////////////////////////////////////////////Pv7/9DHxv+7q6r//////////////////////////////////////////////////////7qrqv/Qx8f//Pv7///////////////////////////////////////////////////////////////////////////////////+/v+YhIP/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9cJiT/7+zr/////////////////////////////////////////////////////////////////////////////////////////////fz8///////////////////////////////////////////////////////9/Pz////////////////////////////////////////////////////////////////////////////////////////////v6+v/WyUj/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/7yvr///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////u66u/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9qQ0H/9fPz////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9vPz/2xFQ/9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/7uurv///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7uurf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9hMjD/7Ojn/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zo5/9gMS//UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/5WAf//8+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z7+/+VgH//UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9TDQj/wbW1///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////BtbT/Uw0I/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1oiH//a09P////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a0tL/WSIf/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/Zjs6/+Te3v/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////k3t7/ZTs5/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9qQ0L/5N7e///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////k3t7/akNC/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/2Y8Ov/a09L////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////a0tL/ZTs5/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/WiIg/8G1tf/8+/v///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////z7+//BtbT/WSEf/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9TDQj/lYB//+zo6P///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////+zo5/+Vf37/Uw0I/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9hMjD/u66u//bz8///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////9fPz/7uurf9hMS//UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF81IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9sRkT/u66u/+/r6////v7////////////////////////////////////////////////////////////////////////////////////////+/v/v6+v/u6+u/2pDQf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF81IKBctSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9bJSP/mISD/83ExP/u6ur//f39///////////////////////////////////////////////////////9/f3/7urq/83Ew/+ZhIP/XCYj/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBctSCgWEUgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/Vxwa/3lXVv+hj47/u6+v/8zCwv/Wzc3/29TU/9vU1P/Wzc3/zMPC/7uvrv+hj47/eVdW/1gdGv9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgWEUgoFKFIKBfdSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX3UgoFJ1ILBQFSCgWUUgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoFlFMLBQEDAAAAUgoFD1IKBc5SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoFzlIKBQ8DAAAAAAAAABIBAABSCgUcUgoFzlIKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoFzlMLBRwTAQAAAAAAAAAAAAAAAAAAEgEAAFIKBQ9SCgWUUgoF91IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX3UgoFlFIKBQ8TAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAUwsFAVIKBSdSCgWEUgoFy1IKBfNSCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF/1IKBf9SCgX/UgoF81IKBctSCgWEUgoFKFMLBQEDAAAAAAAAAAAAAAAAAAAA8AAAAAAAAA/gAAAAAAAAB8AAAAAAAAADgAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAHAAAAAAAAAA+AAAAAAAAAH8AAAAAAAAA8='

##################################################################################

# Pfad zur Zieldatei auf dem öffentlichen Desktop
$publicDesktopPath = [System.Environment]::GetFolderPath('CommonDesktopDirectory')
$shortcutPath = Join-Path -Path $publicDesktopPath -ChildPath "TeamViewer herunterladen.url"

# Pfad zur ICO-Datei und ICO-Datei erstellen
$iconFilePath = (Join-Path -Path $publicPicturesPath -ChildPath 'TVQS.ico')
$iconBytes = [Convert]::FromBase64String($iconBase64)
[IO.File]::WriteAllBytes($iconFilePath, $iconBytes)

# Speichern der Bilddatei als ICO
Add-Type -AssemblyName System.Windows.Forms
$icon = New-Object System.Drawing.Icon($iconFilePath)
$iconStream = [System.IO.MemoryStream]::new()
$icon.Save($iconStream)

# Create the .url file content
$urlFileContent = @"
[InternetShortcut]
URL=$url
IconFile=$iconFilePath
IconIndex=0
"@

# Write the content to the .url file
$urlFileContent | Set-Content -Path $shortcutPath