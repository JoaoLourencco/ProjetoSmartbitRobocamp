*** Settings ***
Documentation        Suite de testes de matricula
...                  Administrador uma vez logado consegue matricular alunos na academia

Library              Browser
Library    Collections
             
Resource            ../resoucers/base.resource


*** Test Cases ***

Deve matricular um aluno

    # Falcão Não mexer
    # Smart
    # 11/10/2022

    ${Admin}    Create Dictionary
    ...         name=Admin  
    ...         email=admin@smartbit.com
    ...         pass=qacademy  
    

    Do Login    ${Admin}
    
    Go To Enrolls
    Go To Enrolls Form
    Select Student        Falcão Não mexer
    Select Plan           Smart
    Fill Start Date         


    Sleep   10
