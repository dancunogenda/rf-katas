The following are the steps that I would take whilemanually testing the 
login features:-

Step 1 - Use a browser such as Chrome to open the link http:127.0.0.1:7272. 
        If all is successful, 
        I should see the Login Page which a field for the username and  
        password, together with a login button present

Step 2 - To test a valid login, I will enter the username = demo and    
         password = mode and this should take me to the Welcome Page when
         the Login button is pressed

Step 3 - To test a login when neither the password nor the username is 
         provided, I would just click on the login button and an error page
         should be displayed warning of a failed login due to the username
         and password not being valid

Step 4 - To test for a login only with a valid username and an invalid
         password, I would enter the right username and either leave the
         password field empty or with a wrong password. The response in
         both cases is the same, as a warning is received that the login 
         has failed dues to either the username or password being invalid


Step 4 - To test for a login only with a valid password and a wrong or empty 
         username. I would either leave the username field empty or put a 
         wrong username and a right password. The error page is displayed, 
         and a warning that either the password or username is wrong

