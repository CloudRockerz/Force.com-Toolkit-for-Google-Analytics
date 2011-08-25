/**
* Class Name:  CustomSettingController
* Description: To update custom setting records 
*
*/

public with sharing class CustomSettingsController {

	public List<Site_Metric_Settings__c> siteMetricSettingList {get;set;}
	public  Site_Metric_Settings__c siteMetricSetting {get;set;}

    /**
    * Constructor fetches all values from custom setting object in a list
    * If no record found in a list, It adds values in a list 
    */
    public CustomSettingsController(){
    
    	init();
    
    }
   
    public void init(){
    
    	siteMetricSettingList=[Select Name,email__c,password__c,table_Id__c from Site_Metric_Settings__c] ;   
        if(siteMetricSettingList==null){
        	Site_Metric_Settings__c siteMetricSetting2=new Site_Metric_Settings__c();
        	siteMetricSetting2.Name='';
        	siteMetricSetting2.Email__c='';
        	siteMetricSetting2.Password__c='';
        	siteMetricSetting2.Table_Id__c='';
        	siteMetricSettingList= new List<Site_Metric_Settings__c>();
        	siteMetricSettingList.add(siteMetricSetting2);
        	insert siteMetricSettingList;
           	siteMetricSetting=siteMetricSettingList.get(0);
        }else{
        	siteMetricSetting=siteMetricSettingList.get(0);
        }
    }
    /**
    *Method written to save the records inserted by user using update operation
    */
    public Pagereference save(){
        try{
            upsert siteMetricSetting;
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Settings saved successfully !!'));
        }catch(Exception e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error in saving settings'));
        }
    	return null;
    }
}