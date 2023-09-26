Feature: As a potential customer, I need to see the elements on the shop page and interact with them.


  @ShopPage #Test Case 2
  Scenario: Product Categories Functionality
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks any link available under the "Product Categories"
    Then the client should only see that particular product they clicked on

  @ShopPage #Test Case 3-7
  Scenario Outline: Default Sorting <functionality>
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks on the <sortingOption> item in "Default sorting" dropdown
    Then the client can view the popular products only
    @SortingFunctionality
    Examples:
      | functionality | sortingOption            |
      | popularity    | Sort by Popularity       |
      | average       | Sort by Average ratings  |
      | newness       | Sort by Newness ratings  |
      | low to high   | Sort by Low to High Item |
      | high to low   | Sort by High to Low Item |


  @ShopPage #Test Case 8
  Scenario: Read More Functionality
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks on the "Read More" button
    Then the client cannot add the product which has read more option as it was out of stock

  @ShopPage #Test Case 9
  Scenario: Sale Functionality
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client locates the "Sale" written product
    Then the client can clearly view the difference in the actual price with the old price striken for the sale products

  @ShopPage #Test Case 10
  Scenario: Add to Basket-View Basket Functionality
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks on the "Add to Basket" button on any book
    And the client clicks on the "View Basket" displayed under the first button
    And the client can see the subtotals, taxes and total above the "Proceed to Checkout" button
    And the client clicks on the "Proceed to Checkout" button
    And the client can see the Billing Details, Order Details, Additional details and Payment gateway details
    And the client can fill out every detail and select any "Payment gateway" they wish
    And the client clicks on the "Place Order" button
    Then the page navigates to Order confirmation page with order details,bank details,customer details and billing details

  @ShopPage #Test Case 11
  Scenario: Add to Basket-View Basket through Item link
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks on the "Add to Basket" button on any book
    And the client clicks on the item link to navigate to the checkout page
    And the client can see the subtotals, taxes and total above the "Proceed to Checkout" button
    And the client clicks on the "Proceed to Checkout" button
    And the client can see the Billing Details, Order Details, Additional details and Payment gateway details
    And the client can fill out every detail and select any "Payment gateway" they wish
    And the client clicks on the "Place Order" button
    Then the page navigates to Order confirmation page with order details,bank details,customer details and billing details

  @ShopPage #Test Case 12
  Scenario: Add to Basket-View Basket-Tax Functionality
    Given the client enters the Shop Page
    When the client clicks "Shop Menu" button
    And the client clicks on the "Add to Basket" button on any book
    And the client clicks on the item link to navigate to the checkout page
    And the client can see the subtotals, taxes and total above the "Proceed to Checkout" button
    Then the taxes rate should be 2% for India and it should be 5% for abroad