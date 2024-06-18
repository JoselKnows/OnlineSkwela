

    //signup and login slide animation 

    $(document).ready(function (){
        $("#signupBtn").click(function(){
            $("#main").animate({left:"22.5%"},400);
            $("#main").animate({left:"30%"},500);

            $("#login-form").css("visibility","hidden");
            $("#login-form").animate({left:"25%"},400);

            $("#signup-form").animate({left:"17%"},400);
            $("#signup-form").animate({left:"30%"},500);
            $("#signup-form").css("visibility","visible");
        });
        $("#loginBtn").click(function(){
            $("#main").animate({left:"77.5%"},400);
            $("#main").animate({left:"70%"},500);

            $("#signup-form").css("visibility","hidden");
            $("#signup-form").animate({left:"75%"},400);

            $("#login-form").animate({left:"83.5%"},400);
            $("#login-form").animate({left:"70%"},500);
            $("#login-form").css("visibility","visible");
            

        
    });
    
    // // log-in code
    //     const loginForm = document.getElementById("login-form");
    //     const loginButton = document.getElementById("login-form-submit");
    //     const loginErrorMsg = document.getElementById("login-error-msg");
    //     // const loginErrorMsg2ndline = document.getElementById("error-msg-second-line");

    //     loginButton.addEventListener("click", (e) => {
    //         e.preventDefault();
    //         const username = loginForm.username.value;
    //         const password = loginForm.password.value;

    //         if (username === "user" && password === "josel") {
    //             alert("You have successfully logged in.");
    //             window.open("https://localhost/php/logintomain/landingpage/landing.php","_self");
    //         } else {
    //             loginErrorMsg.style.opacity = 1;
    //             //  location.reload();
    //             // loginErrorMsg2ndline.style.opacity = 1;
    //         }
    //     })
        })
