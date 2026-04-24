## work situation (the previous team abandoned the project)

### About
This is a work-related exercise I completed while working with a new Data Engineering team at an e-commerce company. There was no operational database, but they managed to export the transactional sales history and the basic catalog in .csv format. However, a critical piece of information was completely lost.

## I will have to rebuild the infrastructure, model the data, and develop an integration with external services to recover missing information, all in order to make the system 100% ready to answer business questions.

### Repository structure 
* /data_base
    * `auxiliar.sql`
    * `e-commerse.db`
    * `schema.sql`
* /dataset
    * `categories.csv`
    * `countries.csv`
    * `order_items.csv`
    * `orders.csv`
    * `product_details.csv`
    * `products.csv`
    * `shipping_regions.csv`
    * `users.csv`
* `dataBaseModel.ipynb`
* `consults_sprint.ipynb`
* `fixingShippingRegions.ipynb`
* `README.md`

### Features & Exercise Milestones
* **DB modeling** : Use Technologies, like figma and sqlite, to model and built of the data base by interpreting of the datasets presented.
* **Data ingestion & Inspection** : Load raw `.csv`s data with pandas, and with the help of `.info()`, `.head()` and others detect if there is data to be fix.
* **Calls to APIs** : Make a script that consult the API of *FIRST Countries* and fetches any data that is required to completed the `shipping_regions` table in the DB.
* **Data Normalization & querys to DB** : Make sure that the DB is up and running the way is supposed to do, ensuring that everything works 100%.

### Requirements
* Python (v3.9 or higher)
* Pandas (for data manipulation)
* Jupyter Notebook or JupyterLab (to run the `.ipynb` files)
* SQLite (alexcvzz) Extension VScode (to execute `.sql` code in VScode)
* SQLite Viewer (Florian Klampfer) Extension Vscode (to see `.db` data Bases in VScode)

### Setup & Execution 
1. **Clone the repo**
```bash
git clone https://github.com/SadCloud03/e-commerse-inter-situation.git
cd e-commerse-inter-situation
```

2. **Set up the Virtual Environment**
```bash
python -m venv venv
# Windows
.\venv\Scripts\activate
# macOS/Linux
source venv/bin/activate
```

3. **Install Dependencies**
```bash
pip install pandas requests ipykernel
```

4. **Initialize the dataBase**
```
* Open VScode and use the SQLite (alexcvzz) extension.
* Open /data_base/schema.sql and run the queries to create the tables. This sets the foundation before data ingestion.
```

5. **Run the Notebooks**
```
* Open dataBaseModel.ipynb to inspect raw data and map the relationships.
* Open fixingShippingRegions.ipynb to execute the API calls and repair the shipping_regions table.
* Open consult_sprint.ipynb to execute the test querys to the new data Base.
```