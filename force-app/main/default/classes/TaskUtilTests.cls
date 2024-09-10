@IsTest
private class TaskUtilTests {
    
    @IsTest
    static void testGetTaskPriorityNormal() {
        Test.startTest();
        String pri = TaskUtil.getTaskPriority('NY');
        Test.stopTest();
        System.Assert.areEqual('Normal', pri);
    }

    @IsTest
    static void testGetTaskPriorityHigh() {
        Test.startTest();
        String pri = TaskUtil.getTaskPriority('CA');
        Test.stopTest();
        System.Assert.areEqual('High', pri);
    }
}