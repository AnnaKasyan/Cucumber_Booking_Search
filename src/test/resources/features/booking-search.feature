Feature: Booking search

  Scenario Outline: Validation of hotels rating
    Given Keyword for search is "<keyword>"
    When User navigates to booking.com
    And User does search hotel
    Then Search result with "<expected hotel name>" in title is on the first page
    And Hotel has rating "<expected rating>"
    Examples:
      | keyword         | expected hotel name | expected rating |
      | The Omnia       | The Omnia           | 9.7             |
      | Achtis Hotel    | Achtis Hotel        | 9.8             |
      | The Legian Bali | The Legian Bali     | 9.4             |

