# Emotion Recognition using ECG (ETRI Project)

An ETRI project to build and validate machine learning models for emotion recognition (Arousal/Valence) using ECG-derived cardiac features. This project also analyzes how a subject's Emotional Intelligence (EI) impacts model performance.

---

## 🔬 Project Structure & Experiments

This repository is organized into a series of experiments, each building upon the last.

1.  **`cardio_exp0_preprocessing`**
    * **Purpose**: Initial data exploration (EDA) and feature preprocessing.
    * **Contains**: Jupyter notebooks for cleaning data and preparing features for modeling.

2.  **`cardio_exp1_given_data` (Baseline)**
    * **Purpose**: Establish a baseline using the initially provided 5-fold data splits.
    * **Finding**: This approach resulted in abnormally high accuracy (~95%), strongly suggesting **data leakage** in the original splits. This motivated the need for more robust validation.

3.  **`cardio_exp2_entire_data_TVT` (Standard Hold-Out Validation)**
    * **Purpose**: To robustly evaluate model performance on unseen data, preventing leakage.
    * **Method**: Combines all data, splits it into a training set (80%) and a hold-out test set (20%), and performs 5-fold CV only on the training set before final evaluation on the test set.

4.  **`cardio_exp3_entire_data_TV` (K-Fold CV on All Training Data)**
    * **Purpose**: To assess the model's potential performance when using all available training data.
    * **Method**: Combines all `train` and `valid` sets and performs a 5-fold CV on the entire collection.

---

## 📁 Data & Results

* **Data (`/data`)**: All scripts expect raw and preprocessed data to be in a `data` subfolder within each experiment's directory (e.g., `cardio_exp1_given_data/data/`).
* **Results (`/res`)**: Each experiment saves its performance summary (Accuracy, AUC, F1, etc.) as `.csv` files in its respective `res` subfolder.

---

## 🚀 Getting Started

1.  **Clone the repository**:
    ```bash
    git clone git@github.com:LeeChangmin0310/ETRI-Emotion.git
    cd ETRI-Emotion
    ```

2.  **Set up the environment**:
    ```bash
    chmod +x setup_etri_emotion.sh
    ./setup_etri_emotion.sh
    conda activate etri-emotion

    # Or manually
    conda create -n etri-emotion python=3.10
    conda activate etri-emotion
    pip install -r requirements.txt
    conda activate etri-emotion
    ```
    
3.  **Run an experiment**:
    Navigate to the desired experiment directory and run its main script.
    ```bash
    cd cardio_exp2_entire_data_TVT
    python main.py # Or the corresponding script/JupyterNotebook
    ```