Feature: Registration

  @SuccessfulRegistration  @TestCase1
  Scenario: Successful registration
    Given the client enters the MyAccount page
    When  the client enters email: "sgroangie13@gmail.com" and password "asdasd4322321fds" on the 'Register' section
    Then access the MyAccountPage after clicking the button:"REGISTER"


  @FailedRegistration  @TestCase2-5
  Scenario Outline: Failed registration by <motive>
    Given the client enters the MyAccount page
    When  the client enters <email> and <password> on the 'Register' section
    Then a <warning> is shown

    @InvalidInput
    Examples:
      | motive        | email                | password         | warning                                                                               |
      | Invalid email | sgroangie13gmail.com | asdasd4322321fds | Please include an '@' in the email address. 'sgroangie13gmail.com' is missing an '@'. |

    @MissingInput
    Examples:
      | motive                     | email                 | password         | warning                               |
      | Missing email              |                       | asdasd4322321fds | Please provide a valid email address. |
      | Missing password           | sgroangie13@gmail.com |                  | Please enter an account password.     |
      | Missing email and password |                       |                  | Please provide a valid email address. |