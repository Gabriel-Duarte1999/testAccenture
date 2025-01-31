*** Settings ***
Library    Collections
Library    BuiltIn       
Library    SeleniumLibrary
Library    OperatingSystem
Library    FakerLibrary    locale=pt_BR

#Configurações do Navegador
Resource    shared/setup_teardown.robot

#Estrutura dos testes
Resource    pages_structure/fill_form_randomly_structure.robot
Resource    pages_structure/web_tables_structure.robot
Resource    pages_structure/widgets_progress_bar_structure.robot
Resource    pages_structure/sortable_interaction_structure.robot


*** Variables ***

${site}        https://demoqa.com/


