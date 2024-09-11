@isTest
private class TestRestrictContactByName {

    @isTest
    static void testInvalidLastName() {
        Contact testContact = new Contact(LastName = 'INVALIDNAME');
        Test.startTest();
        try {
            upsert testContact;
        } catch (DmlException e) {
            System.assertEquals(e.getMessage().contains(
                'The Last Name INVALIDNAME is not allowed for DML'), true, 'Invalid Last Name');
        }
        Test.stopTest();
    }
}