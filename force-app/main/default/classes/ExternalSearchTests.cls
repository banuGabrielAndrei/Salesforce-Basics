@IsTest
private class ExternalSearchTests {
  @IsTest
  static void testPositiveMocking() {
    // GIVEN
    HTTPMockFactory mock = new HTTPMockFactory(
      200,
      'OK',
      'I found it!',
      new Map<String, String>()
    );
    Test.setMock(HttpCalloutMock.class, mock);
    // WHEN
    Test.startTest();
      String result = ExternalSearch.googleIt('epic search');
    Test.stopTest();
    // THEN
    Assert.areEqual('I found it!', result, 'Expected to receive mock response');
  }

   @IsTest
  static void testNegativeMocking() {
    HttpMockFactory mock = new HttpMockFactory(
        500, 'Internal Server Error', 'server issue!', 
        new Map<String,String>());
    Test.setMock(HttpCalloutMock.class, mock);
    Test.startTest();
       String result = ExternalSearch.googleIt('server issue');
    Test.stopTest();
    Assert.areEqual('server issue!', result, 'Expected response to be "server issue!" for a 500 error'); 
  }
}