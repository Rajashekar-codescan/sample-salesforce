public with sharing class ProductController {
    @AuraEnabled(cacheable=true)
    public static List<Product__c> getProducts() {
        return [
            SELECT Name, Cost__c, Details__c 
            FROM Product__c 
            ORDER BY Cost__c DESC
            WITH SECURITY_ENFORCED
        ];
    }
}
