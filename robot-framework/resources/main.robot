*** Settings ***
Library    Collections
Library    BuiltIn       
Library    SeleniumLibrary
Library    OperatingSystem
Library    FakerLibrary    locale=pt_BR

#Configurações do Navegador
Resource    shared/setup_teardown.robot

#Palavras-Chave para acesso às telas
Resource    shared/navegation_settings.robot


*** Variables ***

${site}        https://demoqa.com/


