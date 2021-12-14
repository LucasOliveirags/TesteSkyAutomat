*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}               https://www.sky.com.br/
${BROWSER}           chrome
${ButtonX}           class: close
${AbaProgramacao}    xpath://*[@id="main-menu"]/div[2]/div[2]/ul[1]/li[3]/a/strong
${BtnListCanais}     css: a.btn.btn-title-no-background.pull-right
${AVULSO}


*** Keywords ***

Acessar o site
  Open Browser    url=${URL}  browser=${BROWSER}

Clicar no botão X
  Click Button    ${ButtonX}

Clicar no botão Programação
  Click Element    ${AbaProgramacao}

Clicar no botão Lista de canais
    Execute Javascript    $(document).scrollTop(${800})
    Click Button    ${BtnListCanais}
