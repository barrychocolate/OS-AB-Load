# OS-AB-Load



This project includes the steps required to transfer the Ordnance Survey (OS) Address Base (AB) Plus csv data into an SQL database.
It also includes the loading of the National Statistics Postcode Lookup (NSPL)

 into a table.

Key points to note:

1 This is primarily designed for use on a windows enviroment with Microsoft SQL Server.  It may work on other platforms but i haven't carried out any testing.

2 This is for Ordnance Survey Address Base Plus data and is current as of June 2018.  This will not work on the Address Base Premium version which has multiple tables whereas the plus version has a single table.

3 The Ordnance Survey Address Base data is not included in the project as this would breach the licence conditions.  You can find out how to obtain Address Base Plus and other OS products on their website https://www.ordnancesurvey.co.uk/business-and-government/products/addressbase-plus.html

4 The NSPL is really useful for cross matching postcodes to find statistical boundries.  If you wish to load the NSPL then you will need to download it from the ONS Geography Portal (it's free and is around 1GB).  You can get it here 
https://ons.maps.arcgis.com/home/item.html?id=fd4d376782994b1ca2316a2fd0649315 

5 The docs folder in the project contains the technical specification for the Address Base Plus data which is what i used to create my table schema.  It also contains the NSPL User Guide may 2018 which was used to create the schema for the NSPL table.





The key steps of this process are:

1 Creating the tables in your SQL database to hold the OS AB data and the NSPL data

2 Inserting the OS AB data into the tables

3 Transfer the data from the temporary tables into the master table.  Then truncate and drop the temporary tables.

4 Adding indexes (these were for my intended use so you may wish to skip

5 Inserting the NSPL data into its table

 (again not essential but is a useful resource)
