*** Comments ***
# Antes de executar este teste, coloque o email e senha no arquivo setup


*** Settings ***
Resource    ../testesRobot/shared/setup_teardown.robot


*** Test Cases ***
All tests
    Run in to workspace
    Set Global Name Flow    João - Manual com logger    # QA - João - Function e Base64
    Structure to enter in some specific flow
    Exec some specific Flow
