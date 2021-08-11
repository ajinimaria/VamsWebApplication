(function($) {

    $(".toggle-password").click(function() {

        $(this).toggleClass("zmdi-eye zmdi-eye-off");
        var input = $($(this).attr("toggle"));
        if (input.attr("type") == "password") {
          input.attr("type", "text");
        } else {
          input.attr("type", "password");
        }
      });

})(jQuery);


function Validate() {
    var subcat = document.getElementById("ddlClinic");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelClinic").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelClinic").style.display = "none";
    }
    var subcat = document.getElementById("ddlVaccine");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelVaccine").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelVaccine").style.display = "none";
    }
    var subcat = document.getElementById("ddlPriorityGroup");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelPriority").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelPriority").style.display = "none";
    }
    var subcat = document.getElementById("ddlTargetPopulation");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelTarget").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelTarget").style.display = "none";
    }
    var subcat = document.getElementById("txtDate");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelDate").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelDate").style.display = "none";
    }
    var subcat = document.getElementById("ddlTime");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelTime").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelTime").style.display = "none";
    }
    return true;
}

function ValidateLogin() {
    var subcat = document.getElementById("txtEmail");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelEmail").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelEmail").style.display = "none";
    }
    var subcat = document.getElementById("txtPassword");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelPassword").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelPassword").style.display = "none";
    }
    return true;
}

function ValidateAddClinic() {
    var subcat = document.getElementById("txtName");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelName").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelName").style.display = "none";
    }
    var subcat = document.getElementById("txtAddress");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelAddress").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelAddress").style.display = "none";
    }

    var subcat = document.getElementById("txtEmail");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelEmail").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelEmail").style.display = "none";
    }

    var subcat = document.getElementById("txtPhone");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelPhone").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelPhone").style.display = "none";
    }

    var subcat = document.getElementById("txtNoPeopleHourly");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelPeople").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelPeople").style.display = "none";
    }
    return true;
}

function ValidateAddStock() {
    var subcat = document.getElementById("ddlClinic");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelClinic").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelClinic").style.display = "none";
    }
    var subcat = document.getElementById("ddlVaccine");
    if (subcat.value == "0") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelVaccine").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelVaccine").style.display = "none";
    }

    var subcat = document.getElementById("txtStock");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelStock").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelStock").style.display = "none";
    }
    return true;
}


function ValidateSignup() {
    var subcat = document.getElementById("txtFirstName");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelName").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelName").style.display = "none";
    }

    var subcat = document.getElementById("txtLastName");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelLastName").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelLastName").style.display = "none";
    }

    var subcat = document.getElementById("txtEmail");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelEmail").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelEmail").style.display = "none";
    }

    var subcat = document.getElementById("txtAddress");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelAddress").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelAddress").style.display = "none";
    }

    var subcat = document.getElementById("txtPassword");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelPass").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelPass").style.display = "none";
    }

    var subcat = document.getElementById("txtRePassword");
    if (subcat.value == "") {
        //If the "Please Select" option is selected display error.
        document.getElementById("errLabelRePass").style.display = "block";
        return false;
    } else {
        document.getElementById("errLabelRePass").style.display = "none";
    }
    return true;
}
