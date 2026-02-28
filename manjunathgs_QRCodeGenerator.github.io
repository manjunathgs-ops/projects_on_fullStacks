<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background:linear-gradient(to left,rgb(201, 53, 53),rgb(189, 134, 32));
        }
.Main {
    top: 100px;
    left: 35%;
    right:auto ;
    position: absolute;
    width: 400px;
    height: 500px;
    background-color: rgb(240, 238, 236);

}
.Main h1 {
    position: relative;
    text-align: center;
    font-weight: 800;
}
.Main  hr {
    color: rgb(19, 18, 17);
    font-weight: bolder;
    height: 2px;
    background-color: rgb(20, 16, 10);
}
.Main label{
    position: relative;
    left: 10%;
    right: 40%;

}
.Main input{
    position: relative;
    left: 10%;
    right: 40%;
}
 .button_on {
  
    position: relative;
    left: 40%;
    right: 40%;
 }
 .Div2 {
    display: flex;           /* Logic: This activates the centering tools */
    justify-content: center; /* Logic: Horizontal center */
    align-items: center;     /* Logic: Vertical center */
    
    position: relative;
    left: 17%;
    top: 10px;
    height: 270px;
    width: 270px;
    background-color: rgb(215, 223, 230);
    border: 5px solid black; /* Fixed your border syntax mistake here */
}

 button{
    width: max-content;
    font-style: larger;
 }
 .download {
   position: relative;
    left: 40%;
    right: auto;
     background-color: chartreuse;
     font-weight: 700;
     border-radius: 10px;

 }
 #h11{
    position:absolute;
    text-align: center;
    font-size: xx-large;
    background-color: blueviolet;
    left: 25%;
    right: 25%;
    border-radius: 22px;
 }
    </style>
</head>
<body>
    <h1 id="h11"><span>Welcome To Your QR Codes</span></h1>
    <div class="Main">
        
         <h1>QR CODE Generator</h1>
         <hr>
         <label for=""><span>paste to convert</span></label>
         <input type="text" placeholder="Enter the CharaCter" width="130px" class="inputte">
<br><br><br>
         <button  class="button_on"     onclick="QrCodeGenerator()">Click Me</button>
         <div class="Div2">
            here
         </div>
         <br>
         <button onclick="downloader()" class="download">Download</button>
    </div>
    
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>

<script>
    function QrCodeGenerator () {
       alert('Welcome')

      const inputt=  document.querySelector('.inputte').value;
         const output= document.querySelector('.Div2');
         // this is for to make the info  in the div tag for this one
        output.innerHTML="";
            
        if(inputt.trim() !== ""){
            new QRCode(output,{text:inputt,width:200,height:200
            });
         
        }

    }
    function downloader() {
       
        let image=document.querySelector('.Div2 img');
        if(image){
          let a=  document.createElement('a');
            a.href=image.src;
            
            a.download='you_want_QR.png';
             
            a.click();
            alert('thank you for downloading');
        }

    }
</script>
</html>
