@isTest
private class TestVerifyDate {

    @isTest
    static void testWithin30Days() {
        Date d1 = Date.today();
        Date d2 = d1.addDays(10);
        Date newDate = VerifyDate.CheckDates(d1, d2);
        System.Assert.areEqual(d2,newDate);
    }

    @isTest
    static void testMoreThan30days() {
        Date d1 = date.today();
        Date d2 = d1.addDays(31);
        Date newDate = VerifyDate.CheckDates(d1, d2);
        System.assertNotEquals(newDate, d2, 'Date2 is more than 30 days after Day1');
    }

    @isTest
    static void testSameDates() {
        Date d1 = date.today();
        Date d2 = d1;
        Date newDate = VerifyDate.CheckDates(d1, d2);
        System.Assert.areEqual(d2,newDate);
    }

    static void testDate2BeforeDate1() {
        Date d1 = Date.today();
        Date d2 = d1.addDays(-10);
        Date newDate = VerifyDate.CheckDates(d1, d2);
        System.assertNotEquals(newDate, d2, 'Date 2 is before Date 1');
    }
}

