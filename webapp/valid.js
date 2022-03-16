  class Validation {
    /*setter(firstName, lastName, email) {
        const details = new userDetails();
        details.setFirstName(this.validations(0, firstName));
       // console.log("called setterfma")
        details.setLastName(this.validations(1,lastName));
        details.setEmail(this.validations(2, email));
        //alert(details['Email']);
        //alert(details['FirstName']);
        //alert(details['LastName']);
    }*/
    validations(index, value) {
        if (index === 0) {
            const regExpName = /^[a-zA-Z]+$/
            if (value === "") { document.getElementById('error0').textContent = "*Please fill out the field" }
            else if (value.length <= 3) {
                document.getElementById('error0').textContent = "* Username must be atleast 5 Characters"
            }
            else if (value.length > 14) {
                document.getElementById('error0').textContent = "* Username should not exceeds 14 Characters"
            }
            else if (!(regExpName.test(value))) {
                document.getElementById('error0').textContent = "* special characters and numbers are not allowed "
            }
            else {
                document.getElementById('error0').textContent = ""
                return value;
            }
        }
        else if(index===1){
            const regExp = /^([a-zA-Z0-9-_\.]+)@([a-zA-Z0-9]+)\.([a-zA-Z]{2,10})(\.[a-zA-Z]{2,8})?$/
            if (value === "") {
                document.getElementById('error1').textContent = "* Please Enter Valid Email"
            } else if (!(regExp.test(value))) {
                document.getElementById('error1').textContent = "* Invalid Email"
            } else {
                document.getElementById('error1').textContent = ""
                return value;
            }
        }
        else if(index===2){
            const regExp = /^[0-9][0-9]{9}$/
            if (value === "") {
                document.getElementById('error2').textContent = "* Please Enter Valid phonenumber"
            } else if (!(regExp.test(value))) {
                document.getElementById('error2').textContent = "* Invalid phonenumber"
            } else {
                document.getElementById('error2').textContent = ""
                return value;
            }
        }
        else if(index===3){
            
            if (value === "") {
                document.getElementById('error3').textContent = "* Please Enter Valid password"
            } else if (value.length <= 3) {
                document.getElementById('error3').textContent = "* Username must be atleast 5 Characters"
            }
            else if (value.length > 14) {
                document.getElementById('error3').textContent = "* Username should not exceeds 14 Characters"
            
            } else {
                document.getElementById('error3').textContent = ""
                return value;
            }
        }
          else if(index==4){
	       var Password=document.getElementById("error3").value;
	       if(value===""){
		    document.getElementById('error4').textContent = "* Please Enter Valid password"
            } else if (value!==Password) {
                document.getElementById('error4').textContent = "* password not same"
            } else {
                document.getElementById('error4').textContent = ""
                return value;
            }
}
    }
}
class userDetails {
    setFirstName(firstname) {
        this.FirstName = firstname;
    }
    setLastName(lastname) {
        this.LastName = lastname;
    }
    setEmail(email) {
        this.Email = email;
    }
}
let object = new Validation();
var form = document.getElementById('signup_form');
const button = document.getElementById('submit');
var userName = document.getElementById('userName');
var email = document.getElementById('email');
var phoneNumber = document.getElementById('phoneNumber');
var password = document.getElementById('password');
var password = document.getElementById('confirmPassword');


userName.addEventListener('input', () => {
    //console.log("inside fname");
    //console.log(firstName.value);
    object.validations(0, userName.value);
})
email.addEventListener('input', () => {
    //console.log("inside email");
    object.validations(1, email.value);
}) 

phoneNumber.addEventListener('input', () => {
    //console.log("inside lastname");
    object.validations(2, phoneNumber.value);
})
password.addEventListener('input', () => {
    //console.log("inside lastname");
    object.validations(3, password.value);
})
confirmPassword.addEventListener('input', () => {
    //console.log("inside lastname");
    object.validations(4, confirmPassword.value);
})
button.addEventListener('submit', function (event) {
    event.preventDefault();
    console.log("pressingsubmit");
    var firstName1 = firstName.value;
    var lastName1 = lastName.value;
    var email1 = email.value;
    //let obj = new Validation();
    //obj.setter(firstName1, lastName1, email1);
})
 