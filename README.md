Force.com Toolkit for Google Analytics
======================================  

Installation
------------

For an easy, 1-click installation: [Force.com Toolkit for Google Analytics on Code Share](http://developer.force.com/codeshare/project/forcecom-toolkit-for-google-analytics).

To use the source code with a Salesforce org: [How To Use Github and the Force.com IDE](http://blog.sforce.com/sforce/2011/04/how-to-use-git-github-force-com-ide-open-source-labs-apps.html)

Files
-----

The toolkit contains the following elements for integrating Google Analytics data into Salesforce and Force.com applications:  

### Custom Settings

* Site Metric Settings - login and table for Google Analytics

### Custom Objects

* Site Metric Date - date range or single date for a Site Metric
* Site Metric - a standard metric           
* Site Event - a custom event        

### Classes

* GoogleAnalytics - methods to login, request, and parse analytics data into temporary Entry objects  
* ImportGoogleAnalytics - sample import code; requires creation of Site Metric Settings

### Triggers

* SiteMetric_Time - populate human-readable time field for select metrics (ie. Average Time on Site)     

Setup
-----

1. In Setup > Security Controls > Remote Site Settings, add the site https://www.google.com
2. In Setup > Develop > Custom Settings, select Manage next to Site Metric Settings and enter your Google Analytics email and password   
3. To find the Table Id for your site, you can use the [Google Analytics Data Feed Query Explorer](http://code.google.com/apis/analytics/docs/gdata/gdataExplorer.html)  

Run Samples
-----------

In the System Log, execute one of the following commands:  

* ImportGoogleAnalytics.importSingleMetric(name)
* ImportGoogleAnalytics.importDailyMetrics(name)
* ImportGoogleAnalytics.importEvents(name)    

where name is a string with the name of the Custom Settings you created in Setup.   

The result should be a series of Site Metric Date, Site Metric, and Site Event records.
You may need to adjust the dates in ImportGoogleAnalytics to match activity dates for your site.    

Help and Discussion
-------------------

For help and discussion, please use the project's [Google Group](http://groups.google.com/group/forcecom-toolkit-for-google-analytics).         

References
----------   

* [Data Export API - Getting Started - Google Analytics](http://code.google.com/apis/analytics/docs/gdata/gdataDeveloperGuide.html)
* [Dimensions & Metrics Reference - Google Analytics](http://code.google.com/apis/analytics/docs/gdata/gdataReferenceDimensionsMetrics.html)
* [Event Tracking Guide - Google Analytics](http://code.google.com/apis/analytics/docs/tracking/eventTrackerGuide.html)

