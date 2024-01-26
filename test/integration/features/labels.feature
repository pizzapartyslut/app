Feature: Labels

  Scenario: Create Label
    Given no labels exist
    And a label is added
    When a settings sync is triggered
    Then the label is available

  Scenario: Create Label with leading `#`
    Given no labels exist
    And a label is added with a leading `#`
    When a settings sync is triggered
    Then the label is available

  Scenario: Update Label
    Given a label exists
    And the color is updated on the existing label
    When a settings sync is triggered
    Then the label has the updated color

  @wip
  Scenario: Remove Label
    When a settings sync is triggered
