*** Settings ***
Documentation        Suite de testes de matricula
...                  Administrador uma vez logado consegue matricular alunos na academia

Library              Browser
Library              Collections
             
Resource            ../resources/base.resource
Resource    ../resources/services/sessions.resource




*** Test Cases ***

Deve matricular um aluno

    ${Admin}           Get fixture    admin
    ${falcao}         Get fixture     falcao

    Reset Student        ${falcao}[student][email]
    
    ${token}    Get Service Token    ${admin}
    POST New Student        ${token}     ${falcao}[student]

    Do Login    ${Admin}
    
    Go To Enrolls
    Go To Enrolls Form
    Select Student        ${falcao}[student][name]
    Select Plan           ${falcao}[enroll][plan]
    Fill Start Date         
    Submmit enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso

    
