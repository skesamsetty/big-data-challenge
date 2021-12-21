# big-data-challenge


## **Background**:

Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available.

### **Approach**:

This assignment uses Amazon review datasets "Video Games" and "Digital Music". Using Google Colab notebooks, I have extracted the datasets from S3 data sources using pyspark session into Pandas DataFrame. Loaded the data into the database tables.

Per the assignment instructions, it is mentioned that we use two separate Colab notebooks for this ETL - one for each dataset. 

### **Issue**:

Sometimes the dataset can have common key values. 

    Example: 
        Product:"B00064YZAQ" - "Opteka 650-1300mm High Definition Telephoto Zoom Lens for Canon EOS Digital SLR Cameras" is present in both Video Games and Cameras; Loading products from 2 different notebooks would result in Unique key violation.

        Similarly, same customer can be part of multiple datasets. Loading customer dataset separately from multiple notebooks would lead to unique key violation.

### **Solution**:

Because of above said reasons, I am performing the Data ETL in single Google Colab notebook; Unioning the data from two datasets and remove duplicates or perform aggregation as applicable.

---

`BigDataAmazonDatasets.ipynb` - Two awazon review datasets were extracted into individual dataframes, merged the two dataframes using union into one, transformed the data to remove duplicates and for type conversion and finally loaded the dataframe into RDS tables.

---

Look out for unique key constraints awhile executing single dataset notebook and the DB tables have data from other dattasets too.

`BigDataAmazonVideoGames.ipynb` - Google Colab notebook to extract, transform and load the Video games dataset.

`BigDataAmazonDigitalMusic.ipynb` - Google Colab notebook to extract, transform and load the Digital music dataset. 

  
---