@isTest
private class CalculatorTests {

    @isTest
    static void testDivideByZero() {
        try {
            Test.startTest();
            Calculator.divide(2, 0);
            Test.stopTest();
            Assert.fail('An exception should have been thrown');
        } catch (Calculator.CalculatorException ce) {
            Assert.isTrue(
                ce.getMessage().equals('You still can\'t divide by zero'),
                'Exception message was ' + ce.getMessage()
            );
        } 
    }
}