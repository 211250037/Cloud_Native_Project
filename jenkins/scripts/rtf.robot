*** Settings ***
Library           requests

*** Test Cases ***
case 1
    ${res}    requests.get    http://172.29.4.18:30000/greeting
    should contain    ${res.text}    Hello