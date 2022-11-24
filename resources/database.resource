*** Settings ***

Documentation                Gerenciando a massa de testes através do banco de dados

Library            DatabaseLibrary

*** Keywords ***

Connect To Postgres
    Connect To Database	    psycopg2
    ...                    	vspfrhlo
    ...                     vspfrhlo
    ...                    	pep2lqMuJT9JIRn0bOjV4-rC-whWQdws
    ...                     babar.db.elephantsql.com
    ...                    	5432

Select Student Where email
    [Arguments]            ${email} 

    ${query}                Set Variable
    ...                     SELECT * FROM public.students WHERE email = '${email}';  

   ${result}                Query                ${query}
   [return]                   ${result}[0]


Delete Enroll By Email
    [Arguments]             ${email}

    ${user}                 Select Student Where email    ${email}

    ${query}                Set Variable
    ...                     DELETE FROM public.enrollments WHERE student_id = '${user}[0]';

    Execute Sql String      ${query}

#Helpers
Reset Student Enroll
    [Arguments]                    ${email}
    Connect To Postgres
    Delete Enroll By Email         ${email}
    Disconnect From Database