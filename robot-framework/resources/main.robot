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

#Estrutura dos testes
Resource    pages_structure/fill_form_randomly_structure.robot
Resource    pages_structure/web_tables_structure.robot


*** Variables ***

${site}        https://demoqa.com/


