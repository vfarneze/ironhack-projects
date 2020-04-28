lab-pipelie
==============================

[B

Project Organization
------------

    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── intermediate   <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    └── src                <- Source code for use in this project.
        ├── __init__.py    <- Makes src a Python module
        ├── client.py      <- Any external connection (via API for example) should be written here    
        ├── params.py      <- All parameters of the execution
        ├── pipeline.py    <- The ETL (extract-transform-load) pipeline itself containing the sequence of nodes
        │
        └── nodes          <- Scripts to containing each step of the ETL process.
             ├── data_preparation.py
             ├── data_gathering.py
             ├── data_transform.py
             ├── data_sotrage.py
             └── data_visualization.py
         
--------

