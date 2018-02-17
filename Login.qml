import QtQuick 2.4

LoginForm {
    loginMouseArea.onPressed: {
    }
    userPinTextField.onTextChanged: {
    }
    userNumberTextField.onTextChanged: {
    }

    userNumberTextField.validator: IntValidator{}
    userNumberTextField.maximumLength: 10

    userPinTextField.validator: IntValidator {}
    userPinTextField.maximumLength: 4
    userPinTextField.echoMode: TextInput.Password

}
