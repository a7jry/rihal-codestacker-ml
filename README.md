# **CityX Crime Data Analysis & Prediction System**

This project aims to leverage machine learning and geo-spatial visualization to help the CityX Police Department identify crime patterns, predict future crime hotspots, and assist in crime categorization and severity assessment. The system uses a comprehensive crime dataset to provide data-driven insights for efficient law enforcement responses.

---

## **Table of Contents**

1. [Project Overview](#project-overview)
2. [Objectives & Challenges](#objectives--challenges)
3. [Installation](#installation)
4. [Usage](#usage)
   - [Notebooks](#notebooks)
   - [Web Application](#web-application)
5. [Dataset](#dataset)
6. [Model](#model)
7. [Results & Insights](#results--insights)
8. [Web Interface & Geo-Spatial Mapping](#web-interface--geo-spatial-mapping)
9. [Report Extraction](#report-extraction)
10. [Deployment](#deployment)
11. [Contributing](#contributing)
12. [License](#license)

---

## **Project Overview**

CityX, a peaceful metropolis, is experiencing a rise in criminal activity. The police department has gathered extensive historical crime data but struggles to extract meaningful insights due to the overwhelming volume of data. This project aims to clean, analyze, and visualize this data, and build machine learning models to predict crime hotspots, classify crime types, and assess the severity of incidents.

### **Core Components:**
- **Crime Classification**: Predict the category of crimes based on descriptions.
- **Severity Assignment**: Classify crime severity levels based on crime type.
- **Geo-Spatial Mapping**: Visualize crime patterns on interactive maps.
- **Web Dashboard**: Build a web interface to explore crime data interactively.

---

## **Objectives & Challenges**

### **Level 1: Exploratory Data Analysis (EDA)**

1. **Clean and preprocess the data**: Prepare raw crime data for analysis.
2. **Explore patterns**: Analyze trends based on time, location, and crime categories.
3. **Summarize key features**: Understand major trends and factors influencing crime rates.
4. **Visualize trends**: Present data visually to identify correlations and patterns.

### **Level 2: Crime Classification & Severity Assignment**

#### Part A: Predicting Crime Type
- Build a supervised learning model to classify crimes based on their description (Descript).
- **Goal**: Predict the crime category (Category) and evaluate model performance.

#### Part B: Assigning Crime Severity
- Classify each crime into one of the severity levels using conditional logic based on the crime category.
- **Severity Levels**: From non-criminal to serious offenses like kidnapping and arson.

### **Level 3: Geo-Spatial Mapping & Basic Web UI**

#### Part A: Geo-Spatial Visualization
- Use geo-spatial libraries (e.g., Folium, Plotly, GeoPandas) to visualize crime hotspots on a map.

#### Part B: Basic Web UI
- Develop a simple web interface to display the results of your analysis.
- Integrate the geo-spatial maps into the dashboard.

### **Level 4: Advanced Web UI & Report Extraction**

#### Part A: Police Report Extraction
- Extract key fields from sample police reports (PDF) for automated processing.

#### Part B: Integration with Classifier
- Feed extracted data into the crime classification and severity models.

#### Part C: Enhanced Web UI
- Design a web interface that allows users to input crime data and receive predictions from the trained models.

### **Bonus Task: Deployment**

#### Part A: Dockerization & Containerization
- Create a Dockerfile to containerize the entire project for easy deployment.

#### Part B: Cloud Deployment
- Deploy your application to a cloud platform (e.g., Heroku, AWS, or DigitalOcean).

---

## **Installation**

To run this project locally, follow these steps:

### Prerequisites:
- Python 3.x
- pip (Python package installer)

### Steps:

```bash
# Clone the repository
git clone https://github.com/a7jry/rihal-codestacker-ml.git

# Navigate to the project directory
cd cityx-crime-analysis

# Install dependencies
pip install -r requirements.txt
```

---

## **Usage**

### Notebooks

The project contains two Jupyter Notebooks:

1. **Data Exploration and Preprocessing**: `notebooks/EDA.ipynb`
   - Loads and preprocesses the crime dataset.
   - Performs initial exploratory data analysis (EDA).

2. **Model Training and Evaluation**: `notebooks/Model.ipynb`
   - Trains a machine learning model to classify crimes and predict their severity.
   - Evaluates model performance.

To run the notebooks, open them in Jupyter:

```bash
jupyter notebook
```

### Web Application

1. **Run the Flask app**:
   - Navigate to the `app` directory.
   - Run the Flask app:
     ```bash
     cd app
     python app.py
     ```

2. **Access the Web Application**:
   - Open a web browser and visit `http://127.0.0.1:5000/`.

---

## **Dataset**

- **Source**: [CityX Crime Dataset]
- **Description**: The dataset contains crime incidents with fields like timestamp, crime category, description, resolution, and geo-coordinates.

---

## **Model**

- **Algorithms Used**: Random Forest Classifier, Logistic Regreession
- **Objective**: Predict crime categories and assess severity levels based on the crime description.
- **Evaluation Metrics**: Accuracy, Precision, Recall, F1 Score

---

## **Results & Insights**

- **Model Accuracy**: 99% on the test set
- **Crime Hotspots**: Visualized using geo-spatial maps
- **Crime Severity**: Correctly classified based on predefined severity levels

---

## **Web Interface & Geo-Spatial Mapping**

The project includes an interactive map to explore crime data by location. Users can zoom into areas with high crime frequencies and analyze trends over time.

### Technologies Used:
- **Folium/Plotly**: For geo-spatial visualization
- **Flask**: For the web dashboard

---

## **Report Extraction**

The project can automatically extract information from PDF police reports. This data is processed and used to predict crime type and severity.

---

## **Deployment**

# Project Setup and Dockerization

This project is containerized using Docker for easy deployment and scalability. It includes both a Jupyter Notebook environment and a Flask web application, which can be run independently or together using Docker Compose.

## Prerequisites
Make sure Docker and Docker Compose are installed on your system.

- [Install Docker](https://docs.docker.com/get-docker/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)

## Building and Running the Jupyter Notebook

To build and run the Jupyter Notebook container:

1. **Build the Docker image for Jupyter Notebook:**
   ```bash
   docker build -f Dockerfile.jupyter -t my-jupyter .
   ```

2. **Run the container:**
   ```bash
   docker run -p 8888:8888 my-jupyter
   ```

3. **Access Jupyter Notebook in your browser:**
   Open [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab) to access the Jupyter Lab environment.

## Building and Running the Flask Application

To build and run the Flask web application container:

1. **Build the Docker image for Flask app:**
   ```bash
   docker build -f Dockerfile.app -t my-flask-app .
   ```

2. **Run the container:**
   ```bash
   docker run -p 5000:5000 my-flask-app
   ```

3. **Access the Flask app in your browser:**
   Open [http://127.0.0.1:5000/](http://127.0.0.1:5000/) to access the Flask web application.

## Building and Running Both Containers with Docker Compose

To build and run both the Jupyter Notebook and Flask app containers simultaneously:

1. **Start both containers using Docker Compose:**
   ```bash
   docker-compose up
   ```

2. **Access the Jupyter Notebook at:**
   [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab)

3. **Access the Flask app at:**
   [http://127.0.0.1:5000/](http://127.0.0.1:5000/)

Note:
You may encounter some unexpected behavior when running the Flask app through the Docker container. For testing purposes and to ensure everything functions correctly, it is recommended to run the app.py file directly from the app folder.

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.