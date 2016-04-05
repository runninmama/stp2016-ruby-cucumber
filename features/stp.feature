@stp
Feature: Order Online

As a human I want a pizza delivered to my house

Scenario: Delivery Address
  Given I have entered a valid address
  When I continue to delivery
  Then all entrees available for order
