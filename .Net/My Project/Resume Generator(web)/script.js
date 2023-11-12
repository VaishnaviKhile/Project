function addNewWEField()
{
    let newNode=document.createElement("textarea") //creation of textarea
    newNode.classList.add("form-control")
    newNode.classList.add("mt-2")
    newNode.classList.add("wefield")
    newNode.setAttribute("rows",3)
    newNode.setAttribute("placeholder","Enter here")

    let weOb=document.getElementById("we") //container of projects
    let weAddButtonOb=document.getElementById("weAddButton")//adding textarea before add button

    weOb.insertBefore(newNode,weAddButtonOb)
}


function weAdd()
{
    let newNode=document.createElement("textarea")
    newNode.classList.add("form-control")
    newNode.classList.add("aqfield")
    newNode.classList.add("mt-2")
    newNode.setAttribute("rows",3)
    newNode.setAttribute("placeholder","Enter here")

    let aqContainer=document.getElementById("aq")
    let aqAddButton=document.getElementById("aqAddButton")

    aqContainer.insertBefore(newNode,aqAddButton)

}

//generating CV
function generateCV()
{
    
    let nameField=document.getElementById("namefield").value
    let nameT1=document.getElementById("nameT1")

    nameT1.innerHTML=nameField;

    //direct setting value of name to nameT2
    document.getElementById('nameT2').innerHTML=nameField

    //contact
    document.getElementById("contactT").innerHTML=document.getElementById("contactfield").value

    //address
    document.getElementById("addressT").innerHTML=document.getElementById("addressfield").value

    //social media
    document.getElementById("fbT").innerHTML=document.getElementById("fbfield").value
    document.getElementById("instaT").innerHTML=document.getElementById("instafield").value
    document.getElementById("linkedT").innerHTML=document.getElementById("linkedfield").value

    //objectives
    document.getElementById('objectiveT').innerHTML=document.getElementById("objectivefield").value

    //for work experiance need to apply loop cuz add button
    let wes=document.getElementsByClassName("wefield")

    let str=''


    for(let e of wes)
    {
        str=str+`<li> ${e.value}</li>`
    }

    document.getElementById('weT').innerHTML=str;


    // for academic qualification
    let aqs=document.getElementsByClassName('aqfield')

    let str1='';

    for(let e of aqs)
    {
        str1=str1+`<li> ${e.value}</li>`
    }

    document.getElementById("aqT").innerHTML=str1

    //setting image

    let file=document.getElementById('imgfield').files[0]

    console.log(file)

    let reader=new FileReader()

    reader.readAsDataURL(file)
    console.log(reader.result)

    //set image to template
    //once loading of img complete then function call
    reader.onloadend=function(){ //if img didn't read completely but function call before
        document.getElementById("imgT").src=reader.result
    }

    document.getElementById("cv-form").style.display="none";
    document.getElementById("cv-template").style.display='block'
}

//print CV
 
function printCV(){
    document.getElementById("print").style.display="none"
    window.print();
}