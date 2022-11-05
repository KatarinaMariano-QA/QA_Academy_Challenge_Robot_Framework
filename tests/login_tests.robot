*** Settings ***
Resource           ../page_objects/login_page.robot
Resource           ../page_objects/home_page.robot
 
Suite Setup        Access the login page 
Suite Teardown     Close Browser


*** Test Cases ***
Successfully login with valid credentials
    [Documentation]   Priority: High
    Insert the user's email "katarina@academy.com"
    Insert the user's password "katarina@academy"
    Click the enter button
    Verify if succesfully message is "Bem vindo, Katarina Academy!"
    [Teardown]    Realize logout

Login failed with invalid e-mail
    [Documentation]   Priority: High
    Insert a invalid email
    Insert the user's password "katarina@academy"
    Click the enter button
    Verify if error message is "Problemas com o login do usuário"
   
Login failed with invalid password
    [Documentation]   Priority: Medium
    Insert the user's email "katarina@academy.com" 
    Insert a invalid password
    Click the enter button
    Verify if error message is "Problemas com o login do usuário"  
 
Login failed without e-mail
    [Documentation]   Priority: Low
    Insert the user's password "katarina@academy"
    Click the enter button
    Verify if error message is "Email é um campo obrigatório"
   
Login failed without password
    [Documentation]   Priority: Low
    Insert the user's email "katarina@academy.com"
    Click the enter button
    Verify if error message is "Senha é um campo obrigatório"