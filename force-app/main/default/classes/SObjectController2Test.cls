@isTest
public with sharing class SObjectController2Test {

    static testMethod void test() {
		Account a1 = new Account(Name='Test1',
			AccountNumber='1',
            Website='https://trailblazer.me/id/ericsmith',
            Type='Type1',
			Description='D1');
        insert a1;
		Account a2 = new Account(Name='Test2',
			AccountNumber='2',
            Website='https://ericsplayground.wordpress.com/blog/',
            Type='Type2',
			Description='D2');
        insert a2;

        Account[] accts = [Select Id, Name, OwnerId from Account];
        String fieldnames = 'Name,Id,OwnerId,AccountNumber,Website,Type,Description,IsDeleted,CreatedDate,AnnualRevenue,NumberOfEmployees,Fax,LastActivityDate';
        String testResponse = SObjectController2.getReturnResults(accts, fieldnames);
        System.assert(testResponse.contains('"noEditFieldList":["Type","Description"],"lookupFieldList":["OwnerId"]'));
        
        Account[] empty = [Select Id, Name, OwnerId from Account Where Name='NotInAccounts'];
        String testEmpty = SObjectController2.getReturnResults(empty, fieldnames);
        System.assert(testEmpty.contains('"objectName":"EmptyCollection"'));
    }

    static testMethod void testSObjectId() {
        SObjectController2.SObjectIdRequests req = new SObjectController2.SObjectIdRequests();
        req.sObjectName = 'Account';
        req.counter = 0;

        List<SObjectController2.SObjectIdResults> results = SObjectController2.generateSObjectId(new List<SObjectController2.SObjectIdRequests>{req});
        Id accntId = results[0].sobjectId;

        System.assertEquals('001', String.valueOf(accntId).left(3));
    }    

}