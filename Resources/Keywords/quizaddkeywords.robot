*** Settings ***
Library  Selenium2Library
Library  String

*** Keywords ***
Quiz delete
    Click Link  ${quiz_select}
    sleep  2s

Quiz Selection
    Wait Until Page Contains Element  ${add_quiz}  10s
    Click Element  ${add_quiz}
    Sleep  2s


Quiz add title
    [arguments]  ${quiz_title}
    Input Text  ${title_xpath}  ${quiz_title}
    Sleep  2s
    Select From List By Label  ${category}  ${category_value}
    sleep  5s
    Select From List By Label  ${sub_category}  ${sub_category_value}
    sleep  2s
    Input Text  ${Quiz_Description}  ${Quiz_Description_value}
    sleep  2s
    Input Text  ${pass_percentage}  ${pass_percentage_value}
    sleep  2s
    Input Text  ${points_per}  ${points_per_value}
    sleep  2s
    Input Text  ${success_texts}  ${success_text_value}
    sleep  2s
    Input Text  ${Failed_text}  ${Failed_text_value}
    sleep  2s
    Click Element  //input[@id='randomOrder']
    Click Element  //input[@id='realCheck']
    Click Element  //input[@id='answersAtEnd']
    Input Text  ${maximum_question}  ${maximum_question_value}
    Input Text  ${time}  ${time_value}
    Click Button  //button[@type='submit']
    Sleep  5s



Question Add
    Click element  //i[@class='fa fa-plus']
    sleep  5s
    Wait Until Page Contains Element  //i[@class="fa fa-plus"]  10s
    Click Element  ${add_answer}
    sleep  2s
    Wait Until Page Contains Element  //i[@class="fa fa-plus"]  10s
    Click Element  ${add_answer}
    sleep  2s
    Wait Until Page Contains Element  //i[@class="fa fa-plus"]  10s
    Click Element  ${add_answer}
    sleep  2s
    Input text  ${text_area}  ${text_area_value}
    Input text  ${explanation}  ${explanantion_value}
    Input text  ${expalantion_link}  ${explanation_link_value}
    Select From List By Label  ${answer_order}  ${answer_order_value}
    sleep  2s
    Input Text  ${answer1}  ${answer1_value}
    #Input Text  ${answer2}  ${answer2_value}
    #Input Text  ${answer3}  ${answer3_value}
    #Input Text  ${answer4}  ${answer4_value}
    Click Element  //input[@type='checkbox']
    click button  //button[@type='submit']
    sleep  10s

