*** Settings ***
Documentation        Suite de testes de matricula
...                  Administrador uma vez logado consegue matricular alunos na academia

Library              Browser
Library              Collections
             
Resource            ../resources/base.resource




*** Test Cases ***

Deve matricular um aluno

    ${Admin}           Get fixture    admin
    ${student}         Get fixture    student

    Reset Student Enroll        ${student}[email]
    Do Login    ${Admin}
    
    Go To Enrolls
    Go To Enrolls Form
    Select Student        ${student}[name]
    Select Plan           ${student}[enroll][plan]
    Fill Start Date         
    Submmit enroll Form
    Verify Toaster    Matrícula cadastrada com sucesso

    Sleep   3
